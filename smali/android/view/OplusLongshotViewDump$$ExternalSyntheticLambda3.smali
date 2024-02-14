.class public final synthetic Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/OplusLongshotViewDump;

.field public final synthetic blacklist f$1:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$2:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

.field public final synthetic blacklist f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/OplusLongshotViewDump;Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda3;->f$0:Landroid/view/OplusLongshotViewDump;

    iput-object p2, p0, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda3;->f$1:Landroid/view/ViewRootImpl;

    iput-object p3, p0, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda3;->f$2:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    iput-object p4, p0, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda3;->f$0:Landroid/view/OplusLongshotViewDump;

    iget-object v1, p0, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda3;->f$1:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda3;->f$2:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    iget-object v3, p0, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/OplusLongshotViewDump;->lambda$dumpScrollCapture$1$android-view-OplusLongshotViewDump(Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;Ljava/lang/Runnable;)V

    return-void
.end method
