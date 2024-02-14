.class public Landroid/hardware/face/OplusFaceManager$OnAONAuthenticationCancelListener;
.super Ljava/lang/Object;
.source "OplusFaceManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/OplusFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnAONAuthenticationCancelListener"
.end annotation


# instance fields
.field private blacklist mCrypto:Landroid/hardware/biometrics/CryptoObject;

.field final synthetic blacklist this$0:Landroid/hardware/face/OplusFaceManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/face/OplusFaceManager;Landroid/hardware/biometrics/CryptoObject;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/face/OplusFaceManager;
    .param p2, "crypto"    # Landroid/hardware/biometrics/CryptoObject;

    .line 302
    iput-object p1, p0, Landroid/hardware/face/OplusFaceManager$OnAONAuthenticationCancelListener;->this$0:Landroid/hardware/face/OplusFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p2, p0, Landroid/hardware/face/OplusFaceManager$OnAONAuthenticationCancelListener;->mCrypto:Landroid/hardware/biometrics/CryptoObject;

    .line 304
    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .locals 2

    .line 308
    iget-object v0, p0, Landroid/hardware/face/OplusFaceManager$OnAONAuthenticationCancelListener;->this$0:Landroid/hardware/face/OplusFaceManager;

    iget-object v1, p0, Landroid/hardware/face/OplusFaceManager$OnAONAuthenticationCancelListener;->mCrypto:Landroid/hardware/biometrics/CryptoObject;

    invoke-static {v0, v1}, Landroid/hardware/face/OplusFaceManager;->-$$Nest$mcancelAONAuthentication(Landroid/hardware/face/OplusFaceManager;Landroid/hardware/biometrics/CryptoObject;)V

    .line 309
    return-void
.end method
