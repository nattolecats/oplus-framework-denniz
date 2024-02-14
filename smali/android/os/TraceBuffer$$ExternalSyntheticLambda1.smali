.class public final synthetic Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/TraceBuffer;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:J

.field public final synthetic blacklist f$5:Landroid/os/ContentFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/TraceBuffer;Ljava/lang/String;IIJLandroid/os/ContentFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;->f$0:Landroid/os/TraceBuffer;

    iput-object p2, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;->f$3:I

    iput-wide p5, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;->f$4:J

    iput-object p7, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;->f$5:Landroid/os/ContentFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 7

    iget-object v0, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;->f$0:Landroid/os/TraceBuffer;

    iget-object v1, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;->f$3:I

    iget-wide v4, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;->f$4:J

    iget-object v6, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;->f$5:Landroid/os/ContentFilter;

    invoke-virtual/range {v0 .. v6}, Landroid/os/TraceBuffer;->lambda$asyncEnd$2$android-os-TraceBuffer(Ljava/lang/String;IIJLandroid/os/ContentFilter;)V

    return-void
.end method
