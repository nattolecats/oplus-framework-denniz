.class Lcom/oplus/network/heartbeat/HeartbeatStream$1;
.super Lcom/oplus/network/heartbeat/HeartbeatListener;
.source "HeartbeatStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/network/heartbeat/HeartbeatStream;-><init>(Lcom/oplus/network/heartbeat/HeartbeatSettings;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/network/heartbeat/HeartbeatStream;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/network/heartbeat/HeartbeatStream;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/network/heartbeat/HeartbeatStream;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 127
    iput-object p1, p0, Lcom/oplus/network/heartbeat/HeartbeatStream$1;->this$0:Lcom/oplus/network/heartbeat/HeartbeatStream;

    invoke-direct {p0, p2}, Lcom/oplus/network/heartbeat/HeartbeatListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist onHeartbeatStateUpdate(III[I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "err"    # I
    .param p3, "destroy"    # I
    .param p4, "args"    # [I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "heartbeat state update event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destroy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeartbeatStream"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream$1;->this$0:Lcom/oplus/network/heartbeat/HeartbeatStream;

    invoke-static {v0}, Lcom/oplus/network/heartbeat/HeartbeatStream;->-$$Nest$fgetmHandler(Lcom/oplus/network/heartbeat/HeartbeatStream;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatStream$1;->this$0:Lcom/oplus/network/heartbeat/HeartbeatStream;

    invoke-static {v0}, Lcom/oplus/network/heartbeat/HeartbeatStream;->-$$Nest$fgetmHandler(Lcom/oplus/network/heartbeat/HeartbeatStream;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "err"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v2, "destroy"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    if-eqz p4, :cond_0

    array-length v2, p4

    if-lez v2, :cond_0

    .line 137
    const/4 v2, 0x0

    aget v2, p4, v2

    const-string v3, "curr_cycle"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    :cond_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    iget-object v2, p0, Lcom/oplus/network/heartbeat/HeartbeatStream$1;->this$0:Lcom/oplus/network/heartbeat/HeartbeatStream;

    invoke-static {v2}, Lcom/oplus/network/heartbeat/HeartbeatStream;->-$$Nest$fgetmHandler(Lcom/oplus/network/heartbeat/HeartbeatStream;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
