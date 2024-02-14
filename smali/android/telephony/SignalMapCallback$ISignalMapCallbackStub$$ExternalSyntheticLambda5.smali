.class public final synthetic Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;

.field public final synthetic blacklist f$1:Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;->f$0:Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;

    iput-object p2, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;->f$1:Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;

    iput-boolean p3, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;->f$2:Z

    iput p4, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;->f$3:I

    iput p5, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;->f$4:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 5

    iget-object v0, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;->f$0:Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;

    iget-object v1, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;->f$1:Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;

    iget-boolean v2, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;->f$2:Z

    iget v3, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;->f$3:I

    iget v4, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;->lambda$onGeoFenceStateChangedSecondly$3$android-telephony-SignalMapCallback$ISignalMapCallbackStub(Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;ZII)V

    return-void
.end method
