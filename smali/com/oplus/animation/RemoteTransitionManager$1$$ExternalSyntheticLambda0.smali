.class public final synthetic Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/animation/RemoteTransitionManager$1;

.field public final synthetic blacklist f$1:Lcom/oplus/animation/RemoteAnimationCallbackWrapper;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

.field public final synthetic blacklist f$4:[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

.field public final synthetic blacklist f$5:[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

.field public final synthetic blacklist f$6:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/animation/RemoteTransitionManager$1;Lcom/oplus/animation/RemoteAnimationCallbackWrapper;I[Lcom/oplus/animation/RemoteAnimationTargetWrapper;[Lcom/oplus/animation/RemoteAnimationTargetWrapper;[Lcom/oplus/animation/RemoteAnimationTargetWrapper;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/animation/RemoteTransitionManager$1;

    iput-object p2, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$1:Lcom/oplus/animation/RemoteAnimationCallbackWrapper;

    iput p3, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$3:[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

    iput-object p5, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$4:[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

    iput-object p6, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$5:[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

    iput-object p7, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$6:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 7

    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/animation/RemoteTransitionManager$1;

    iget-object v1, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$1:Lcom/oplus/animation/RemoteAnimationCallbackWrapper;

    iget v2, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$3:[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

    iget-object v4, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$4:[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

    iget-object v5, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$5:[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

    iget-object v6, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;->f$6:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/animation/RemoteTransitionManager$1;->lambda$onAnimationStart$0$com-oplus-animation-RemoteTransitionManager$1(Lcom/oplus/animation/RemoteAnimationCallbackWrapper;I[Lcom/oplus/animation/RemoteAnimationTargetWrapper;[Lcom/oplus/animation/RemoteAnimationTargetWrapper;[Lcom/oplus/animation/RemoteAnimationTargetWrapper;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
