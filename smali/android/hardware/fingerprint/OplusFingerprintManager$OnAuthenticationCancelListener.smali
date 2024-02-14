.class Landroid/hardware/fingerprint/OplusFingerprintManager$OnAuthenticationCancelListener;
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
    name = "OnAuthenticationCancelListener"
.end annotation


# instance fields
.field private final blacklist mAuthRequestId:J

.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/fingerprint/OplusFingerprintManager;J)V
    .locals 0
    .param p2, "authId"    # J

    .line 588
    iput-object p1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$OnAuthenticationCancelListener;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-wide p2, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$OnAuthenticationCancelListener;->mAuthRequestId:J

    .line 590
    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .locals 3

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancel fingerprint authentication requested for RequestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$OnAuthenticationCancelListener;->mAuthRequestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/Fingerprint21/OplusFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$OnAuthenticationCancelListener;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    iget-wide v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$OnAuthenticationCancelListener;->mAuthRequestId:J

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/OplusFingerprintManager;->-$$Nest$mcancelAuthenticationFido(Landroid/hardware/fingerprint/OplusFingerprintManager;J)V

    .line 596
    return-void
.end method
