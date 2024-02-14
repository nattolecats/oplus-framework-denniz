.class Landroid/hardware/fingerprint/OplusFingerprintManager$OnTouchEventMonitorCancelListener;
.super Ljava/lang/Object;
.source "OplusFingerprintManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/OplusFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTouchEventMonitorCancelListener"
.end annotation


# instance fields
.field private final blacklist mAuthRequestId:J

.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/fingerprint/OplusFingerprintManager;J)V
    .locals 0
    .param p2, "authId"    # J

    .line 319
    iput-object p1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$OnTouchEventMonitorCancelListener;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-wide p2, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$OnTouchEventMonitorCancelListener;->mAuthRequestId:J

    .line 321
    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .locals 3

    .line 324
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$OnTouchEventMonitorCancelListener;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    iget-wide v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$OnTouchEventMonitorCancelListener;->mAuthRequestId:J

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/OplusFingerprintManager;->cancelTouchEventListener(J)V

    .line 325
    return-void
.end method
