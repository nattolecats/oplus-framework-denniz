.class Landroid/os/OplusLooperMsgDispatcher$1;
.super Landroid/os/Handler;
.source "OplusLooperMsgDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/OplusLooperMsgDispatcher;->initLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/OplusLooperMsgDispatcher;


# direct methods
.method constructor blacklist <init>(Landroid/os/OplusLooperMsgDispatcher;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/OplusLooperMsgDispatcher;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 52
    iput-object p1, p0, Landroid/os/OplusLooperMsgDispatcher$1;->this$0:Landroid/os/OplusLooperMsgDispatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    sget-object v0, Landroid/os/OplusLooperMsgDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INVALID COMMAND MSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :pswitch_0
    const/4 v0, 0x0

    .line 57
    .local v0, "tmpQueue":Landroid/os/OplusLooperMsgDispatcher$DumpQueue;
    invoke-static {}, Landroid/os/OplusLooperMsgDispatcher;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v2, p0, Landroid/os/OplusLooperMsgDispatcher$1;->this$0:Landroid/os/OplusLooperMsgDispatcher;

    invoke-static {v2}, Landroid/os/OplusLooperMsgDispatcher;->-$$Nest$fgetmDumpQueue(Landroid/os/OplusLooperMsgDispatcher;)Landroid/os/OplusLooperMsgDispatcher$DumpQueue;

    move-result-object v2

    move-object v0, v2

    .line 59
    iget-object v2, p0, Landroid/os/OplusLooperMsgDispatcher$1;->this$0:Landroid/os/OplusLooperMsgDispatcher;

    new-instance v3, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;-><init>(Landroid/os/OplusLooperMsgDispatcher;Landroid/os/OplusLooperMsgDispatcher$DumpQueue-IA;)V

    invoke-static {v2, v3}, Landroid/os/OplusLooperMsgDispatcher;->-$$Nest$fputmDumpQueue(Landroid/os/OplusLooperMsgDispatcher;Landroid/os/OplusLooperMsgDispatcher$DumpQueue;)V

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {v0}, Landroid/os/OplusLooperMsgDispatcher$DumpQueue;->doDumpMerge()V

    .line 62
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 66
    .end local v0    # "tmpQueue":Landroid/os/OplusLooperMsgDispatcher$DumpQueue;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2803
        :pswitch_0
    .end packed-switch
.end method
