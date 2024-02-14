.class public final synthetic Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda2;->f$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$$ExternalSyntheticLambda2;->f$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    check-cast p1, Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->addTarget(Landroid/view/ScrollCaptureTarget;)V

    return-void
.end method
