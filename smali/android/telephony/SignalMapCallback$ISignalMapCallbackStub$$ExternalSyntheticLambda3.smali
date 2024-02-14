.class public final synthetic Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;

.field public final synthetic blacklist f$1:Z

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;

    iput-boolean p2, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda3;->f$1:Z

    iput p3, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;

    iget-boolean v1, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda3;->f$1:Z

    iget v2, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda3;->f$2:I

    iget v3, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda3;->f$3:I

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;->lambda$onGeoFenceStateChangedSecondly$2(Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;ZII)V

    return-void
.end method
