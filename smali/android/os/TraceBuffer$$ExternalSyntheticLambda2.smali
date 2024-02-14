.class public final synthetic Landroid/os/TraceBuffer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/TraceBuffer;

.field public final synthetic blacklist f$1:Landroid/os/TraceInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/TraceBuffer;Landroid/os/TraceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda2;->f$0:Landroid/os/TraceBuffer;

    iput-object p2, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda2;->f$1:Landroid/os/TraceInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda2;->f$0:Landroid/os/TraceBuffer;

    iget-object v1, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda2;->f$1:Landroid/os/TraceInfo;

    invoke-virtual {v0, v1}, Landroid/os/TraceBuffer;->lambda$asyncBegin$1$android-os-TraceBuffer(Landroid/os/TraceInfo;)V

    return-void
.end method
