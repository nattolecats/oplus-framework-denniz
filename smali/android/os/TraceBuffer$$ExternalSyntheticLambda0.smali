.class public final synthetic Landroid/os/TraceBuffer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/TraceBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/TraceBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda0;->f$0:Landroid/os/TraceBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda0;->f$0:Landroid/os/TraceBuffer;

    check-cast p1, Landroid/os/TraceInfo;

    invoke-virtual {v0, p1}, Landroid/os/TraceBuffer;->lambda$new$0$android-os-TraceBuffer(Landroid/os/TraceInfo;)Z

    move-result p1

    return p1
.end method
