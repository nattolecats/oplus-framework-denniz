.class public final synthetic Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;

.field public final synthetic blacklist f$1:Lcom/oplus/network/heartbeat/HeartbeatListener;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:[I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;Lcom/oplus/network/heartbeat/HeartbeatListener;III[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;->f$0:Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;

    iput-object p2, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;->f$1:Lcom/oplus/network/heartbeat/HeartbeatListener;

    iput p3, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;->f$4:I

    iput-object p6, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;->f$5:[I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 6

    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;->f$0:Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;

    iget-object v1, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;->f$1:Lcom/oplus/network/heartbeat/HeartbeatListener;

    iget v2, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;->f$4:I

    iget-object v5, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;->f$5:[I

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;->lambda$onHeartbeatStateUpdate$1$com-oplus-network-heartbeat-HeartbeatListener$IHeartbeatListenerStub(Lcom/oplus/network/heartbeat/HeartbeatListener;III[I)V

    return-void
.end method
