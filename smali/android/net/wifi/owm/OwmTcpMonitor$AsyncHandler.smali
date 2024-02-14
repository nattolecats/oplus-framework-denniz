.class Landroid/net/wifi/owm/OwmTcpMonitor$AsyncHandler;
.super Landroid/os/Handler;
.source "OwmTcpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmTcpMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmTcpMonitor;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/owm/OwmTcpMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 120
    iput-object p1, p0, Landroid/net/wifi/owm/OwmTcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmTcpMonitor;

    .line 121
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 122
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 126
    iget-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmTcpMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHandler Recv Mesasge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmTcpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmTcpMonitor;Ljava/lang/String;)V

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknow message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmTcpMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmTcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmTcpMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmTcpMonitor;->-$$Nest$mhandleAddTcpSyncRecord(Landroid/net/wifi/owm/OwmTcpMonitor;Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;)V

    .line 130
    nop

    .line 135
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
