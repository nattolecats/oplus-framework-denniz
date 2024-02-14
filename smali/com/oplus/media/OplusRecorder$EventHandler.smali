.class Lcom/oplus/media/OplusRecorder$EventHandler;
.super Landroid/os/Handler;
.source "OplusRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/media/OplusRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final blacklist MEDIA_RECORDER_EVENT_ERROR:I = 0x1

.field private static final blacklist MEDIA_RECORDER_EVENT_INFO:I = 0x2

.field private static final blacklist MEDIA_RECORDER_EVENT_LIST_END:I = 0x63

.field private static final blacklist MEDIA_RECORDER_EVENT_LIST_START:I = 0x1

.field private static final blacklist MEDIA_RECORDER_TRACK_EVENT_ERROR:I = 0x64

.field private static final blacklist MEDIA_RECORDER_TRACK_EVENT_INFO:I = 0x65

.field private static final blacklist MEDIA_RECORDER_TRACK_EVENT_LIST_END:I = 0x3e8

.field private static final blacklist MEDIA_RECORDER_TRACK_EVENT_LIST_START:I = 0x64


# instance fields
.field private blacklist mOplusRecorder:Lcom/oplus/media/OplusRecorder;

.field final synthetic blacklist this$0:Lcom/oplus/media/OplusRecorder;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/media/OplusRecorder;Lcom/oplus/media/OplusRecorder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mr"    # Lcom/oplus/media/OplusRecorder;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 854
    iput-object p1, p0, Lcom/oplus/media/OplusRecorder$EventHandler;->this$0:Lcom/oplus/media/OplusRecorder;

    .line 855
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 856
    iput-object p2, p0, Lcom/oplus/media/OplusRecorder$EventHandler;->mOplusRecorder:Lcom/oplus/media/OplusRecorder;

    .line 857
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 875
    iget-object v0, p0, Lcom/oplus/media/OplusRecorder$EventHandler;->mOplusRecorder:Lcom/oplus/media/OplusRecorder;

    invoke-static {v0}, Lcom/oplus/media/OplusRecorder;->-$$Nest$fgetmNativeContext(Lcom/oplus/media/OplusRecorder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "OplusRecorder_Java"

    if-nez v0, :cond_0

    .line 876
    const-string v0, "OplusRecorder went away with unhandled events"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void

    .line 879
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return-void

    .line 889
    :sswitch_0
    iget-object v0, p0, Lcom/oplus/media/OplusRecorder$EventHandler;->this$0:Lcom/oplus/media/OplusRecorder;

    invoke-static {v0}, Lcom/oplus/media/OplusRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/oplus/media/OplusRecorder;)Lcom/oplus/media/OplusRecorder$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/oplus/media/OplusRecorder$EventHandler;->this$0:Lcom/oplus/media/OplusRecorder;

    invoke-static {v0}, Lcom/oplus/media/OplusRecorder;->-$$Nest$fgetmOnInfoListener(Lcom/oplus/media/OplusRecorder;)Lcom/oplus/media/OplusRecorder$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/media/OplusRecorder$EventHandler;->mOplusRecorder:Lcom/oplus/media/OplusRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/media/OplusRecorder$OnInfoListener;->onInfo(Lcom/oplus/media/OplusRecorder;II)V

    .line 892
    :cond_1
    return-void

    .line 882
    :sswitch_1
    iget-object v0, p0, Lcom/oplus/media/OplusRecorder$EventHandler;->this$0:Lcom/oplus/media/OplusRecorder;

    invoke-static {v0}, Lcom/oplus/media/OplusRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/oplus/media/OplusRecorder;)Lcom/oplus/media/OplusRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 883
    iget-object v0, p0, Lcom/oplus/media/OplusRecorder$EventHandler;->this$0:Lcom/oplus/media/OplusRecorder;

    invoke-static {v0}, Lcom/oplus/media/OplusRecorder;->-$$Nest$fgetmOnErrorListener(Lcom/oplus/media/OplusRecorder;)Lcom/oplus/media/OplusRecorder$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/media/OplusRecorder$EventHandler;->mOplusRecorder:Lcom/oplus/media/OplusRecorder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/oplus/media/OplusRecorder$OnErrorListener;->onError(Lcom/oplus/media/OplusRecorder;II)V

    .line 885
    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch
.end method
