.class public final synthetic Landroid/os/OplusTraceManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OplusTraceManager;

.field public final synthetic blacklist f$1:Ljava/util/Map;

.field public final synthetic blacklist f$2:Ljava/io/FileDescriptor;

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OplusTraceManager;Ljava/util/Map;Ljava/io/FileDescriptor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda5;->f$0:Landroid/os/OplusTraceManager;

    iput-object p2, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    iput-object p3, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda5;->f$2:Ljava/io/FileDescriptor;

    iput p4, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda5;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda5;->f$0:Landroid/os/OplusTraceManager;

    iget-object v1, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    iget-object v2, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda5;->f$2:Ljava/io/FileDescriptor;

    iget v3, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda5;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/OplusTraceManager;->lambda$handleNativeTrace$8$android-os-OplusTraceManager(Ljava/util/Map;Ljava/io/FileDescriptor;I)V

    return-void
.end method
