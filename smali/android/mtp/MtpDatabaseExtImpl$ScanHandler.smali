.class public Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;
.super Landroid/os/Handler;
.source "MtpDatabaseExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabaseExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanHandler"
.end annotation


# instance fields
.field private blacklist mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist scanContext:Landroid/content/Context;

.field final synthetic blacklist this$0:Landroid/mtp/MtpDatabaseExtImpl;


# direct methods
.method constructor blacklist <init>(Landroid/mtp/MtpDatabaseExtImpl;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Landroid/mtp/MtpDatabaseExtImpl;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;

    .line 113
    iput-object p1, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->this$0:Landroid/mtp/MtpDatabaseExtImpl;

    .line 114
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 115
    iput-object p3, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->scanContext:Landroid/content/Context;

    .line 116
    return-void
.end method

.method private blacklist doHandleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 155
    :pswitch_0
    iget-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "MtpDatabaseExtImpl"

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->this$0:Landroid/mtp/MtpDatabaseExtImpl;

    iget-object v0, v0, Landroid/mtp/MtpDatabaseExtImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    .line 157
    iget-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->this$0:Landroid/mtp/MtpDatabaseExtImpl;

    iget-object v0, v0, Landroid/mtp/MtpDatabaseExtImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    move-result v0

    .line 158
    .local v0, "quitsafe":Z
    invoke-static {}, Landroid/mtp/MtpDatabaseExtImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandlerThread.quitSafely ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v0    # "quitsafe":Z
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    invoke-static {}, Landroid/mtp/MtpDatabaseExtImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    const-string v0, "sendEmptyMessageDelayed EXIT_MESSAGE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    iget-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->this$0:Landroid/mtp/MtpDatabaseExtImpl;

    iget-object v0, v0, Landroid/mtp/MtpDatabaseExtImpl;->mHandler:Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 139
    iget-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;

    .line 140
    .local v0, "params":Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;
    if-eqz v0, :cond_4

    .line 143
    iget-object v3, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->scanContext:Landroid/content/Context;

    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Landroid/mtp/MtpDatabaseExtImpl;->-$$Nest$smupdateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    .line 144
    iget-object v3, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 145
    iget-object v3, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 147
    :cond_3
    iget-object v2, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    iget-object v2, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->this$0:Landroid/mtp/MtpDatabaseExtImpl;

    iget-object v2, v2, Landroid/mtp/MtpDatabaseExtImpl;->mHandler:Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;

    invoke-virtual {v2, v1}, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->sendEmptyMessage(I)Z

    .line 151
    .end local v0    # "params":Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;
    :cond_4
    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;

    .line 130
    .local v0, "param":Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;
    iget-object v2, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 131
    .local v2, "idx":I
    iget-object v3, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 133
    if-nez v2, :cond_5

    .line 134
    iget-object v3, p0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->this$0:Landroid/mtp/MtpDatabaseExtImpl;

    iget-object v3, v3, Landroid/mtp/MtpDatabaseExtImpl;->mHandler:Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;

    invoke-virtual {v3, v1}, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->sendEmptyMessage(I)Z

    .line 170
    .end local v0    # "param":Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;
    .end local v2    # "idx":I
    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 120
    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 123
    nop

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 123
    throw v1
.end method
