.class public final synthetic Landroid/os/OplusTraceManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OplusTraceManager;

.field public final synthetic blacklist f$1:[B


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OplusTraceManager;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda9;->f$0:Landroid/os/OplusTraceManager;

    iput-object p2, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda9;->f$1:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda9;->f$0:Landroid/os/OplusTraceManager;

    iget-object v1, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda9;->f$1:[B

    invoke-virtual {v0, v1}, Landroid/os/OplusTraceManager;->lambda$insertSerializedDataAsQueue$7$android-os-OplusTraceManager([B)V

    return-void
.end method
