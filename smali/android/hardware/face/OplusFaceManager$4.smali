.class Landroid/hardware/face/OplusFaceManager$4;
.super Landroid/hardware/face/FaceManager$AuthenticationCallback;
.source "OplusFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/OplusFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/OplusFaceManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/face/OplusFaceManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/face/OplusFaceManager;

    .line 217
    iput-object p1, p0, Landroid/hardware/face/OplusFaceManager$4;->this$0:Landroid/hardware/face/OplusFaceManager;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAuthenticationAcquired(I)V
    .locals 1
    .param p1, "acquireInfo"    # I

    .line 241
    iget-object v0, p0, Landroid/hardware/face/OplusFaceManager$4;->this$0:Landroid/hardware/face/OplusFaceManager;

    invoke-static {v0}, Landroid/hardware/face/OplusFaceManager;->-$$Nest$fgetmClientCallback(Landroid/hardware/face/OplusFaceManager;)Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 242
    return-void
.end method

.method public blacklist onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 236
    iget-object v0, p0, Landroid/hardware/face/OplusFaceManager$4;->this$0:Landroid/hardware/face/OplusFaceManager;

    invoke-static {v0}, Landroid/hardware/face/OplusFaceManager;->-$$Nest$fgetmClientCallback(Landroid/hardware/face/OplusFaceManager;)Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 237
    return-void
.end method

.method public blacklist onAuthenticationFailed()V
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/hardware/face/OplusFaceManager$4;->this$0:Landroid/hardware/face/OplusFaceManager;

    invoke-static {v0}, Landroid/hardware/face/OplusFaceManager;->-$$Nest$fgetmClientCallback(Landroid/hardware/face/OplusFaceManager;)Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;->onAuthenticationFailed()V

    .line 222
    return-void
.end method

.method public blacklist onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 231
    iget-object v0, p0, Landroid/hardware/face/OplusFaceManager$4;->this$0:Landroid/hardware/face/OplusFaceManager;

    invoke-static {v0}, Landroid/hardware/face/OplusFaceManager;->-$$Nest$fgetmClientCallback(Landroid/hardware/face/OplusFaceManager;)Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method public blacklist onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .locals 1
    .param p1, "result"    # Landroid/hardware/face/FaceManager$AuthenticationResult;

    .line 226
    iget-object v0, p0, Landroid/hardware/face/OplusFaceManager$4;->this$0:Landroid/hardware/face/OplusFaceManager;

    invoke-static {v0}, Landroid/hardware/face/OplusFaceManager;->-$$Nest$fgetmClientCallback(Landroid/hardware/face/OplusFaceManager;)Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/OplusFaceManager$OplusAuthenticationCallback;->onAuthenticationSucceeded()V

    .line 227
    return-void
.end method
