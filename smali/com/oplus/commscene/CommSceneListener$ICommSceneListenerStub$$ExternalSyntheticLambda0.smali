.class public final synthetic Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/commscene/CommSceneListener;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/commscene/CommSceneListener;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/commscene/CommSceneListener;

    iput p2, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/commscene/CommSceneListener;

    iget v1, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;->lambda$onEvent$0(Lcom/oplus/commscene/CommSceneListener;III)V

    return-void
.end method
