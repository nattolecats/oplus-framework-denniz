.class Lcom/oplus/network/OplusNetworkStackManager$MyCallBack;
.super Lcom/oplus/network/IOplusNetScoreChange$Stub;
.source "OplusNetworkStackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/OplusNetworkStackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCallBack"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/network/OplusNetworkStackManager;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/network/OplusNetworkStackManager;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/oplus/network/OplusNetworkStackManager$MyCallBack;->this$0:Lcom/oplus/network/OplusNetworkStackManager;

    invoke-direct {p0}, Lcom/oplus/network/IOplusNetScoreChange$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/network/OplusNetworkStackManager;Lcom/oplus/network/OplusNetworkStackManager$MyCallBack-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/network/OplusNetworkStackManager$MyCallBack;-><init>(Lcom/oplus/network/OplusNetworkStackManager;)V

    return-void
.end method


# virtual methods
.method public blacklist networkScoreChange(IIIZII)V
    .locals 10
    .param p1, "networkId"    # I
    .param p2, "oldScore"    # I
    .param p3, "newScore"    # I
    .param p4, "better"    # Z
    .param p5, "dnsScore"    # I
    .param p6, "tcpScore"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {}, Lcom/oplus/network/OplusNetworkStackManager;->-$$Nest$sfgetallCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 162
    :try_start_0
    const-string v0, "OplusNetworkStackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/oplus/network/OplusNetworkStackManager;->-$$Nest$sfgetallCallbacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/oplus/network/OplusNetworkStackManager;->-$$Nest$sfgetallCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;

    .line 164
    .local v3, "scorechange":Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;->onNetworkQualityChange(IIIZII)V

    .line 165
    .end local v3    # "scorechange":Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;
    goto :goto_0

    .line 166
    :cond_0
    monitor-exit v1

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
