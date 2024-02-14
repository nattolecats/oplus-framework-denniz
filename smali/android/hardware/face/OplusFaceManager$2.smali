.class Landroid/hardware/face/OplusFaceManager$2;
.super Landroid/hardware/face/IFaceCommandCallback$Stub;
.source "OplusFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/face/OplusFaceManager;->regsiterFaceCmdCallback(Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/OplusFaceManager;

.field final synthetic blacklist val$callback:Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/face/OplusFaceManager;Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/face/OplusFaceManager;

    .line 85
    iput-object p1, p0, Landroid/hardware/face/OplusFaceManager$2;->this$0:Landroid/hardware/face/OplusFaceManager;

    iput-object p2, p0, Landroid/hardware/face/OplusFaceManager$2;->val$callback:Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;

    invoke-direct {p0}, Landroid/hardware/face/IFaceCommandCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFaceCmd(I[B)V
    .locals 1
    .param p1, "cmdId"    # I
    .param p2, "result"    # [B

    .line 88
    iget-object v0, p0, Landroid/hardware/face/OplusFaceManager$2;->val$callback:Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/face/OplusFaceManager$FaceCommandCallback;->onFaceCmd(I[B)V

    .line 89
    return-void
.end method
