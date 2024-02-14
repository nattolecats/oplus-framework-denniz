.class Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;
.super Landroid/os/Handler;
.source "OwmMultiMediaMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmMultiMediaMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/owm/OwmMultiMediaMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 377
    iput-object p1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    .line 378
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 379
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 384
    .local v0, "eventTimeStamp":J
    if-nez p1, :cond_0

    .line 385
    return-void

    .line 387
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x67

    sparse-switch v2, :sswitch_data_0

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknow message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OwmMMMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 429
    :sswitch_0
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-static {v2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$fgetmTryToRegisterOlkCallbackTime(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)I

    move-result v2

    const/16 v3, 0xc

    if-ge v2, v3, :cond_4

    .line 430
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-static {v2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mregisterOlkCallback(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)V

    goto/16 :goto_0

    .line 425
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 426
    .local v2, "rssi":I
    iget-object v3, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-static {v3, v2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mcalculateGoodRssiStutterDuration(Landroid/net/wifi/owm/OwmMultiMediaMonitor;I)V

    .line 427
    goto/16 :goto_0

    .line 421
    .end local v2    # "rssi":I
    :sswitch_2
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive MSG_VIDEO_EVENT_STUTTER_TIMEOUT_PKG at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmMultiMediaMonitor;Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, v4}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mcalculateAppStutterDuration(Landroid/net/wifi/owm/OwmMultiMediaMonitor;JILjava/lang/String;)V

    .line 423
    goto/16 :goto_0

    .line 417
    :sswitch_3
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive MSG_VIDEO_EVENT_VIDEO_STOP_PKG at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmMultiMediaMonitor;Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    const/16 v3, 0x66

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, v4}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mcalculateAppStutterDuration(Landroid/net/wifi/owm/OwmMultiMediaMonitor;JILjava/lang/String;)V

    .line 419
    goto/16 :goto_0

    .line 413
    :sswitch_4
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive MSG_VIDEO_EVENT_STUTTER_END_PKG at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmMultiMediaMonitor;Ljava/lang/String;)V

    .line 414
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    const/16 v3, 0x65

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, v4}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mcalculateAppStutterDuration(Landroid/net/wifi/owm/OwmMultiMediaMonitor;JILjava/lang/String;)V

    .line 415
    goto/16 :goto_0

    .line 389
    :sswitch_5
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive MSG_VIDEO_EVENT_STUTTER_START_PKG at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmMultiMediaMonitor;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$misAppInStutteringList(Landroid/net/wifi/owm/OwmMultiMediaMonitor;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 391
    return-void

    .line 394
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-static {v2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$fgetmStutteringAppList(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;

    .line 395
    .local v2, "currentAppStutter":Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;
    if-nez v2, :cond_2

    .line 397
    return-void

    .line 399
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->isUnderStutter:Z

    .line 400
    iget-object v5, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-static {v5}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$fgetmStutteringAppList(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v5, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-static {v5}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-static {v6}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 404
    iget-object v3, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send Timeout Event when stutter start after 60s for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmMultiMediaMonitor;Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-static {v3}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$fgetmOLKStutteringApps(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 407
    iget-object v3, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    const/4 v4, 0x2

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mupdateStutterEvtEnterRecord(Landroid/net/wifi/owm/OwmMultiMediaMonitor;ILjava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mupdateStutterEvtEnterRecord(Landroid/net/wifi/owm/OwmMultiMediaMonitor;ILjava/lang/String;)V

    .line 411
    nop

    .line 437
    .end local v2    # "currentAppStutter":Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;
    :cond_4
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_5
        0x65 -> :sswitch_4
        0x66 -> :sswitch_3
        0x67 -> :sswitch_2
        0x68 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
