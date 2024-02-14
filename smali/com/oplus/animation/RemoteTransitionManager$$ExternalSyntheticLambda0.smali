.class public final synthetic Lcom/oplus/animation/RemoteTransitionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/animation/RemoteTransitionManager;

.field public final synthetic blacklist f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/animation/RemoteTransitionManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/animation/RemoteTransitionManager$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/animation/RemoteTransitionManager;

    iput-object p2, p0, Lcom/oplus/animation/RemoteTransitionManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final blacklist onFrameDraw(J)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/animation/RemoteTransitionManager$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/animation/RemoteTransitionManager;

    iget-object v1, p0, Lcom/oplus/animation/RemoteTransitionManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/oplus/animation/RemoteTransitionManager;->lambda$scheduleApply$0$com-oplus-animation-RemoteTransitionManager(Ljava/util/ArrayList;J)V

    return-void
.end method
