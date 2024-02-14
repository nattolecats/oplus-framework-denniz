.class Lcom/oplus/uifirst/OplusUIFirstManager$UIFirstHandler;
.super Landroid/os/Handler;
.source "OplusUIFirstManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uifirst/OplusUIFirstManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIFirstHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/uifirst/OplusUIFirstManager;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/uifirst/OplusUIFirstManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 581
    iput-object p1, p0, Lcom/oplus/uifirst/OplusUIFirstManager$UIFirstHandler;->this$0:Lcom/oplus/uifirst/OplusUIFirstManager;

    .line 582
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 583
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 586
    const-string v0, "OplusUIFirst"

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 627
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 628
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 629
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 630
    .local v3, "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v4, p0, Lcom/oplus/uifirst/OplusUIFirstManager$UIFirstHandler;->this$0:Lcom/oplus/uifirst/OplusUIFirstManager;

    invoke-static {v4}, Lcom/oplus/uifirst/OplusUIFirstManager;->-$$Nest$fgetmFBThreadManager(Lcom/oplus/uifirst/OplusUIFirstManager;)Lcom/oplus/uifirst/FBThreadManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/oplus/uifirst/FBThreadManager;->handleFbThreadOp(Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;)V

    .line 631
    goto/16 :goto_0

    .line 619
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 620
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 621
    .restart local v2    # "packageName":Ljava/lang/String;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 622
    .restart local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 623
    .local v4, "pid":I
    iget-object v5, p0, Lcom/oplus/uifirst/OplusUIFirstManager$UIFirstHandler;->this$0:Lcom/oplus/uifirst/OplusUIFirstManager;

    invoke-static {v5}, Lcom/oplus/uifirst/OplusUIFirstManager;->-$$Nest$fgetmFBThreadManager(Lcom/oplus/uifirst/OplusUIFirstManager;)Lcom/oplus/uifirst/FBThreadManager;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3}, Lcom/oplus/uifirst/FBThreadManager;->handleFbThreadOp(Ljava/lang/String;ILcom/oplus/uifirst/Utils$ThreadOp;)V

    .line 624
    goto/16 :goto_0

    .line 643
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v4    # "pid":I
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 644
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 645
    .restart local v2    # "packageName":Ljava/lang/String;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 646
    .restart local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v4, p0, Lcom/oplus/uifirst/OplusUIFirstManager$UIFirstHandler;->this$0:Lcom/oplus/uifirst/OplusUIFirstManager;

    invoke-static {v4}, Lcom/oplus/uifirst/OplusUIFirstManager;->-$$Nest$fgetmTpdManager(Lcom/oplus/uifirst/OplusUIFirstManager;)Lcom/oplus/uifirst/TpdManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/oplus/uifirst/TpdManager;->handleThreadOp(Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;)V

    .line 647
    goto :goto_0

    .line 635
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 636
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 637
    .restart local v2    # "packageName":Ljava/lang/String;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 638
    .restart local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 639
    .restart local v4    # "pid":I
    iget-object v5, p0, Lcom/oplus/uifirst/OplusUIFirstManager$UIFirstHandler;->this$0:Lcom/oplus/uifirst/OplusUIFirstManager;

    invoke-static {v5}, Lcom/oplus/uifirst/OplusUIFirstManager;->-$$Nest$fgetmTpdManager(Lcom/oplus/uifirst/OplusUIFirstManager;)Lcom/oplus/uifirst/TpdManager;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3}, Lcom/oplus/uifirst/TpdManager;->handleThreadOp(Ljava/lang/String;ILcom/oplus/uifirst/Utils$ThreadOp;)V

    .line 640
    goto :goto_0

    .line 612
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v4    # "pid":I
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 613
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 614
    .restart local v2    # "packageName":Ljava/lang/String;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 615
    .restart local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget-object v4, p0, Lcom/oplus/uifirst/OplusUIFirstManager$UIFirstHandler;->this$0:Lcom/oplus/uifirst/OplusUIFirstManager;

    invoke-static {v4}, Lcom/oplus/uifirst/OplusUIFirstManager;->-$$Nest$fgetmGlThreadManager(Lcom/oplus/uifirst/OplusUIFirstManager;)Lcom/oplus/uifirst/GlThreadManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/oplus/uifirst/GlThreadManager;->handleGlThreadOp(Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;)V

    .line 616
    goto :goto_0

    .line 604
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 605
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 606
    .restart local v2    # "packageName":Ljava/lang/String;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/oplus/uifirst/Utils$ThreadOp;

    .line 607
    .restart local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 608
    .restart local v4    # "pid":I
    iget-object v5, p0, Lcom/oplus/uifirst/OplusUIFirstManager$UIFirstHandler;->this$0:Lcom/oplus/uifirst/OplusUIFirstManager;

    invoke-static {v5}, Lcom/oplus/uifirst/OplusUIFirstManager;->-$$Nest$fgetmGlThreadManager(Lcom/oplus/uifirst/OplusUIFirstManager;)Lcom/oplus/uifirst/GlThreadManager;

    move-result-object v5

    invoke-virtual {v5, v2, v4, v3}, Lcom/oplus/uifirst/GlThreadManager;->handleGlThreadOp(Ljava/lang/String;ILcom/oplus/uifirst/Utils$ThreadOp;)V

    .line 609
    goto :goto_0

    .line 601
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/oplus/uifirst/Utils$ThreadOp;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "op":Lcom/oplus/uifirst/Utils$ThreadOp;
    .end local v4    # "pid":I
    :pswitch_6
    goto :goto_0

    .line 598
    :pswitch_7
    goto :goto_0

    .line 591
    :pswitch_8
    sget-boolean v1, Lcom/oplus/uifirst/Utils;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 592
    const-string v1, "disableLaunchBoost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/PerformanceManager;->setSchedAssistScene(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    goto :goto_0

    .line 588
    :pswitch_9
    nop

    .line 655
    :goto_0
    goto :goto_1

    .line 653
    :catch_0
    move-exception v1

    .line 654
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception in handle msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
