.class public final synthetic Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;

.field public final synthetic blacklist f$1:Lcom/oplus/commscene/CommSceneListener;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;Lcom/oplus/commscene/CommSceneListener;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;->f$0:Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;

    iput-object p2, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;->f$1:Lcom/oplus/commscene/CommSceneListener;

    iput p3, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;->f$4:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 5

    iget-object v0, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;->f$0:Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;

    iget-object v1, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;->f$1:Lcom/oplus/commscene/CommSceneListener;

    iget v2, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda1;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;->lambda$onEvent$1$com-oplus-commscene-CommSceneListener$ICommSceneListenerStub(Lcom/oplus/commscene/CommSceneListener;III)V

    return-void
.end method
