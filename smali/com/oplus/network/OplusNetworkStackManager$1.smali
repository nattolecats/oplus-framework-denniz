.class Lcom/oplus/network/OplusNetworkStackManager$1;
.super Lcom/oplus/network/IOplusNetdEventCb$Stub;
.source "OplusNetworkStackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/OplusNetworkStackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/network/OplusNetworkStackManager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/network/OplusNetworkStackManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/network/OplusNetworkStackManager;

    .line 348
    iput-object p1, p0, Lcom/oplus/network/OplusNetworkStackManager$1;->this$0:Lcom/oplus/network/OplusNetworkStackManager;

    invoke-direct {p0}, Lcom/oplus/network/IOplusNetdEventCb$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .locals 13
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .param p5, "hostname"    # Ljava/lang/String;
    .param p6, "ipAddresses"    # [Ljava/lang/String;
    .param p7, "ipAddressesCount"    # I
    .param p8, "uid"    # I

    .line 351
    move-object v1, p0

    iget-object v0, v1, Lcom/oplus/network/OplusNetworkStackManager$1;->this$0:Lcom/oplus/network/OplusNetworkStackManager;

    invoke-static {v0}, Lcom/oplus/network/OplusNetworkStackManager;->-$$Nest$fgetmNetworkEventCbList(Lcom/oplus/network/OplusNetworkStackManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 352
    :try_start_0
    iget-object v0, v1, Lcom/oplus/network/OplusNetworkStackManager$1;->this$0:Lcom/oplus/network/OplusNetworkStackManager;

    invoke-static {v0}, Lcom/oplus/network/OplusNetworkStackManager;->-$$Nest$fgetmNetworkEventCbList(Lcom/oplus/network/OplusNetworkStackManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/oplus/network/OplusNetworkStackManager$IOplusNetworkEventCb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .local v4, "cb":Lcom/oplus/network/OplusNetworkStackManager$IOplusNetworkEventCb;
    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    :try_start_1
    invoke-interface/range {v4 .. v12}, Lcom/oplus/network/OplusNetworkStackManager$IOplusNetworkEventCb;->onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    goto :goto_1

    .line 355
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 357
    const-string v5, "OplusNetworkStackManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cb.onDnsEvent faield!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "cb":Lcom/oplus/network/OplusNetworkStackManager$IOplusNetworkEventCb;
    :goto_1
    goto :goto_0

    .line 360
    :cond_0
    monitor-exit v2

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
