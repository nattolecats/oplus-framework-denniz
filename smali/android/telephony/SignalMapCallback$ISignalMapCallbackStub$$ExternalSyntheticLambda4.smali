.class public final synthetic Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;

.field public final synthetic blacklist f$1:Landroid/telephony/SignalMapCallback$QoSPredictListener;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;Landroid/telephony/SignalMapCallback$QoSPredictListener;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;

    iput-object p2, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda4;->f$1:Landroid/telephony/SignalMapCallback$QoSPredictListener;

    iput p3, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda4;->f$3:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;

    iget-object v1, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda4;->f$1:Landroid/telephony/SignalMapCallback$QoSPredictListener;

    iget v2, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda4;->f$2:I

    iget v3, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda4;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;->lambda$onQoSPredictResultChanged$5$android-telephony-SignalMapCallback$ISignalMapCallbackStub(Landroid/telephony/SignalMapCallback$QoSPredictListener;II)V

    return-void
.end method
