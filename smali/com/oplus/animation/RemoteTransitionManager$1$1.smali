.class Lcom/oplus/animation/RemoteTransitionManager$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RemoteTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/animation/RemoteTransitionManager$1;->lambda$onAnimationStart$0$com-oplus-animation-RemoteTransitionManager$1(Lcom/oplus/animation/RemoteAnimationCallbackWrapper;I[Lcom/oplus/animation/RemoteAnimationTargetWrapper;[Lcom/oplus/animation/RemoteAnimationTargetWrapper;[Lcom/oplus/animation/RemoteAnimationTargetWrapper;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/oplus/animation/RemoteTransitionManager$1;

.field final synthetic blacklist val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/animation/RemoteTransitionManager$1;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oplus/animation/RemoteTransitionManager$1;

    .line 556
    iput-object p1, p0, Lcom/oplus/animation/RemoteTransitionManager$1$1;->this$1:Lcom/oplus/animation/RemoteTransitionManager$1;

    iput-object p2, p0, Lcom/oplus/animation/RemoteTransitionManager$1$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 560
    const-string v0, "RemoteTransitionManager"

    :try_start_0
    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/oplus/animation/RemoteTransitionManager$1$1;->val$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-interface {v1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    goto :goto_0

    .line 562
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to call finished callback "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
