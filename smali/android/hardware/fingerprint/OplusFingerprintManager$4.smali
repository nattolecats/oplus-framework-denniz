.class Landroid/hardware/fingerprint/OplusFingerprintManager$4;
.super Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver$Stub;
.source "OplusFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/OplusFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/fingerprint/OplusFingerprintManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/OplusFingerprintManager;

    .line 457
    iput-object p1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$4;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(II)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vendorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/Fingerprint21/OplusFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$4;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/OplusFingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/OplusFingerprintManager;)Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 468
    return-void
.end method

.method public blacklist onFingerprintEngineeringInfoUpdated(Landroid/hardware/fingerprint/EngineeringInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/hardware/fingerprint/EngineeringInfo;

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintEngineeringInfoUpdated\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/Fingerprint21/OplusFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$4;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/OplusFingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/OplusFingerprintManager;)Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;

    move-result-object v0

    const/16 v1, 0x3ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 462
    return-void
.end method

.method public blacklist onTouchDown(I)V
    .locals 3
    .param p1, "sensorId"    # I

    .line 472
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$4;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/OplusFingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/OplusFingerprintManager;)Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 473
    return-void
.end method

.method public blacklist onTouchUp(I)V
    .locals 3
    .param p1, "sensorId"    # I

    .line 477
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$4;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/OplusFingerprintManager;->-$$Nest$fgetmHandler(Landroid/hardware/fingerprint/OplusFingerprintManager;)Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;

    move-result-object v0

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 478
    return-void
.end method
