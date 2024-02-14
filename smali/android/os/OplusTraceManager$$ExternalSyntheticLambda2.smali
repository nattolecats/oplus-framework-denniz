.class public final synthetic Landroid/os/OplusTraceManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OplusTraceManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OplusTraceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda2;->f$0:Landroid/os/OplusTraceManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda2;->f$0:Landroid/os/OplusTraceManager;

    invoke-virtual {v0}, Landroid/os/OplusTraceManager;->lambda$connectRemoteServiceAsync$4$android-os-OplusTraceManager()V

    return-void
.end method
