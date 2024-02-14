.class Landroid/hardware/fingerprint/OplusFingerprintManager$3;
.super Landroid/hardware/fingerprint/IFingerprintCommandCallback$Stub;
.source "OplusFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/OplusFingerprintManager;->unregsiterFingerprintCmdCallback(Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

.field final synthetic blacklist val$callback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/fingerprint/OplusFingerprintManager;Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/OplusFingerprintManager;

    .line 139
    iput-object p1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$3;->this$0:Landroid/hardware/fingerprint/OplusFingerprintManager;

    iput-object p2, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$3;->val$callback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintCommandCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFingerprintCmd(I[B)V
    .locals 1
    .param p1, "cmdId"    # I
    .param p2, "result"    # [B

    .line 142
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager$3;->val$callback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;->onFingerprintCmd(I[B)V

    .line 143
    return-void
.end method
