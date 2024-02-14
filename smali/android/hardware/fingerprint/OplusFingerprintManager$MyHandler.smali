.class Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;
.super Landroid/os/Handler;
.source "OplusFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/OplusFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/fingerprint/OplusFingerprintManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 482
    iput-object p1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    .line 483
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 484
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/fingerprint/OplusFingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/OplusFingerprintManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/fingerprint/OplusFingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 486
    iput-object p1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    .line 487
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 488
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 492
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/Fingerprint21/OplusFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 503
    :sswitch_0
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/EngineeringInfo;

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/OplusFingerprintManager;->-$$Nest$msendFingerprintEngineeringInfo(Landroid/hardware/fingerprint/OplusFingerprintManager;Landroid/hardware/fingerprint/EngineeringInfo;)V

    .line 504
    goto :goto_0

    .line 500
    :sswitch_1
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/OplusFingerprintManager;->-$$Nest$msendTouchUpEvent(Landroid/hardware/fingerprint/OplusFingerprintManager;I)V

    .line 501
    goto :goto_0

    .line 497
    :sswitch_2
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/OplusFingerprintManager;->-$$Nest$msendTouchDownEvent(Landroid/hardware/fingerprint/OplusFingerprintManager;I)V

    .line 498
    goto :goto_0

    .line 494
    :sswitch_3
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/OplusFingerprintManager;->-$$Nest$msendErrorResult(Landroid/hardware/fingerprint/OplusFingerprintManager;II)V

    .line 495
    nop

    .line 508
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_3
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_1
        0x3ed -> :sswitch_0
    .end sparse-switch
.end method
