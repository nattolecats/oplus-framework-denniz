.class Lcom/oplus/animation/RemoteTransitionManager$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "RemoteTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/animation/RemoteTransitionManager;->makeRemoteAnimationRunner(Lcom/oplus/animation/RemoteAnimationCallbackWrapper;)Landroid/view/IRemoteAnimationRunner$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/animation/RemoteTransitionManager;

.field final synthetic blacklist val$animationCallback:Lcom/oplus/animation/RemoteAnimationCallbackWrapper;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/animation/RemoteTransitionManager;Lcom/oplus/animation/RemoteAnimationCallbackWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/animation/RemoteTransitionManager;

    .line 537
    iput-object p1, p0, Lcom/oplus/animation/RemoteTransitionManager$1;->this$0:Lcom/oplus/animation/RemoteTransitionManager;

    iput-object p2, p0, Lcom/oplus/animation/RemoteTransitionManager$1;->val$animationCallback:Lcom/oplus/animation/RemoteAnimationCallbackWrapper;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onAnimationCancelled$1(Lcom/oplus/animation/RemoteAnimationCallbackWrapper;)V
    .locals 0
    .param p0, "animationCallback"    # Lcom/oplus/animation/RemoteAnimationCallbackWrapper;

    .line 578
    invoke-interface {p0}, Lcom/oplus/animation/RemoteAnimationCallbackWrapper;->onAnimationCancelled()V

    .line 579
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onAnimationStart$0$com-oplus-animation-RemoteTransitionManager$1(Lcom/oplus/animation/RemoteAnimationCallbackWrapper;I[Lcom/oplus/animation/RemoteAnimationTargetWrapper;[Lcom/oplus/animation/RemoteAnimationTargetWrapper;[Lcom/oplus/animation/RemoteAnimationTargetWrapper;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 2
    .param p1, "animationCallback"    # Lcom/oplus/animation/RemoteAnimationCallbackWrapper;
    .param p2, "transit"    # I
    .param p3, "appsCompat"    # [Lcom/oplus/animation/RemoteAnimationTargetWrapper;
    .param p4, "wallpapersCompat"    # [Lcom/oplus/animation/RemoteAnimationTargetWrapper;
    .param p5, "nonAppsCompat"    # [Lcom/oplus/animation/RemoteAnimationTargetWrapper;
    .param p6, "finishedCallback"    # Landroid/view/IRemoteAnimationFinishedCallback;

    .line 553
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/oplus/animation/RemoteAnimationCallbackWrapper;->onCreateAnimation(I[Lcom/oplus/animation/RemoteAnimationTargetWrapper;[Lcom/oplus/animation/RemoteAnimationTargetWrapper;[Lcom/oplus/animation/RemoteAnimationTargetWrapper;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 556
    .local v0, "animation":Landroid/animation/AnimatorSet;
    new-instance v1, Lcom/oplus/animation/RemoteTransitionManager$1$1;

    invoke-direct {v1, p0, p6}, Lcom/oplus/animation/RemoteTransitionManager$1$1;-><init>(Lcom/oplus/animation/RemoteTransitionManager$1;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 568
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 569
    return-void
.end method

.method public blacklist onAnimationCancelled(Z)V
    .locals 4
    .param p1, "isKeyguardOccluded"    # Z

    .line 576
    const-string v0, "RemoteTransitionManager"

    const-string v1, "onAnimationCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager$1;->this$0:Lcom/oplus/animation/RemoteTransitionManager;

    invoke-static {v0}, Lcom/oplus/animation/RemoteTransitionManager;->-$$Nest$fgetmHandler(Lcom/oplus/animation/RemoteTransitionManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/animation/RemoteTransitionManager$1;->val$animationCallback:Lcom/oplus/animation/RemoteAnimationCallbackWrapper;

    new-instance v3, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/animation/RemoteAnimationCallbackWrapper;)V

    invoke-static {v0, v1, v3}, Lcom/oplus/animation/RemoteTransitionManager;->-$$Nest$mpostAsyncCallback(Lcom/oplus/animation/RemoteTransitionManager;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 580
    return-void
.end method

.method public blacklist onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 16
    .param p1, "transit"    # I
    .param p2, "apps"    # [Landroid/view/RemoteAnimationTarget;
    .param p3, "wallpapers"    # [Landroid/view/RemoteAnimationTarget;
    .param p4, "nonApps"    # [Landroid/view/RemoteAnimationTarget;
    .param p5, "finishedCallback"    # Landroid/view/IRemoteAnimationFinishedCallback;

    .line 544
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/oplus/animation/RemoteTransitionManager$1;->this$0:Lcom/oplus/animation/RemoteTransitionManager;

    .line 545
    move-object/from16 v9, p2

    invoke-static {v0, v9}, Lcom/oplus/animation/RemoteTransitionManager;->-$$Nest$mwrapRemoteAnimationTarget(Lcom/oplus/animation/RemoteTransitionManager;[Landroid/view/RemoteAnimationTarget;)[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

    move-result-object v10

    .line 546
    .local v10, "appsCompat":[Lcom/oplus/animation/RemoteAnimationTargetWrapper;
    iget-object v0, v8, Lcom/oplus/animation/RemoteTransitionManager$1;->this$0:Lcom/oplus/animation/RemoteTransitionManager;

    .line 547
    move-object/from16 v11, p3

    invoke-static {v0, v11}, Lcom/oplus/animation/RemoteTransitionManager;->-$$Nest$mwrapRemoteAnimationTarget(Lcom/oplus/animation/RemoteTransitionManager;[Landroid/view/RemoteAnimationTarget;)[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

    move-result-object v12

    .line 548
    .local v12, "wallpapersCompat":[Lcom/oplus/animation/RemoteAnimationTargetWrapper;
    iget-object v0, v8, Lcom/oplus/animation/RemoteTransitionManager$1;->this$0:Lcom/oplus/animation/RemoteTransitionManager;

    .line 549
    move-object/from16 v13, p4

    invoke-static {v0, v13}, Lcom/oplus/animation/RemoteTransitionManager;->-$$Nest$mwrapRemoteAnimationTarget(Lcom/oplus/animation/RemoteTransitionManager;[Landroid/view/RemoteAnimationTarget;)[Lcom/oplus/animation/RemoteAnimationTargetWrapper;

    move-result-object v14

    .line 550
    .local v14, "nonAppsCompat":[Lcom/oplus/animation/RemoteAnimationTargetWrapper;
    const-string v0, "RemoteTransitionManager"

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v2, v8, Lcom/oplus/animation/RemoteTransitionManager$1;->val$animationCallback:Lcom/oplus/animation/RemoteAnimationCallbackWrapper;

    new-instance v15, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object v4, v10

    move-object v5, v12

    move-object v6, v14

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/oplus/animation/RemoteTransitionManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/animation/RemoteTransitionManager$1;Lcom/oplus/animation/RemoteAnimationCallbackWrapper;I[Lcom/oplus/animation/RemoteAnimationTargetWrapper;[Lcom/oplus/animation/RemoteAnimationTargetWrapper;[Lcom/oplus/animation/RemoteAnimationTargetWrapper;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 571
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, v8, Lcom/oplus/animation/RemoteTransitionManager$1;->this$0:Lcom/oplus/animation/RemoteTransitionManager;

    invoke-static {v1}, Lcom/oplus/animation/RemoteTransitionManager;->-$$Nest$fgetmHandler(Lcom/oplus/animation/RemoteTransitionManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oplus/animation/RemoteTransitionManager;->-$$Nest$mpostAsyncCallback(Lcom/oplus/animation/RemoteTransitionManager;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 572
    return-void
.end method
