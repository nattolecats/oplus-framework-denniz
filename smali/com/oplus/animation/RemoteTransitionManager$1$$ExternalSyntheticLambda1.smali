.class public final synthetic Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/animation/RemoteAnimationCallbackWrapper;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/animation/RemoteAnimationCallbackWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda1;->f$0:Lcom/oplus/animation/RemoteAnimationCallbackWrapper;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda1;->f$0:Lcom/oplus/animation/RemoteAnimationCallbackWrapper;

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager$1;->lambda$onAnimationCancelled$1(Lcom/oplus/animation/RemoteAnimationCallbackWrapper;)V

    return-void
.end method
