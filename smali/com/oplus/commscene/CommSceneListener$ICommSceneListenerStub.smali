.class Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;
.super Lcom/oplus/commscene/ICommSceneListener$Stub;
.source "CommSceneListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/commscene/CommSceneListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ICommSceneListenerStub"
.end annotation


# instance fields
.field private blacklist mCommSceneListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/commscene/CommSceneListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/commscene/CommSceneListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "CommSceneListener"    # Lcom/oplus/commscene/CommSceneListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 132
    invoke-direct {p0}, Lcom/oplus/commscene/ICommSceneListener$Stub;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;->mCommSceneListenerWeakRef:Ljava/lang/ref/WeakReference;

    .line 134
    iput-object p2, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 135
    return-void
.end method

.method static synthetic blacklist lambda$onEvent$0(Lcom/oplus/commscene/CommSceneListener;III)V
    .locals 0
    .param p0, "csl"    # Lcom/oplus/commscene/CommSceneListener;
    .param p1, "event"    # I
    .param p2, "state"    # I
    .param p3, "phoneId"    # I

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/commscene/CommSceneListener;->onEvent(III)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onEvent$1$com-oplus-commscene-CommSceneListener$ICommSceneListenerStub(Lcom/oplus/commscene/CommSceneListener;III)V
    .locals 2
    .param p1, "csl"    # Lcom/oplus/commscene/CommSceneListener;
    .param p2, "event"    # I
    .param p3, "state"    # I
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/commscene/CommSceneListener;III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onEvent(III)V
    .locals 8
    .param p1, "event"    # I
    .param p2, "state"    # I
    .param p3, "phoneId"    # I

    .line 138
    iget-object v0, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;->mCommSceneListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/commscene/CommSceneListener;

    .line 139
    .local v0, "csl":Lcom/oplus/commscene/CommSceneListener;
    if-nez v0, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    new-instance v7, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;Lcom/oplus/commscene/CommSceneListener;III)V

    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 143
    return-void
.end method
