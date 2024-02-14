.class Lcom/oplus/network/OplusUidPurStats$1;
.super Lcom/oplus/network/IOplusUidNwChange$Stub;
.source "OplusUidPurStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/OplusUidPurStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/network/OplusUidPurStats;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/network/OplusUidPurStats;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/network/OplusUidPurStats;

    .line 36
    iput-object p1, p0, Lcom/oplus/network/OplusUidPurStats$1;->this$0:Lcom/oplus/network/OplusUidPurStats;

    invoke-direct {p0}, Lcom/oplus/network/IOplusUidNwChange$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist appFreezeDataNotify(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const-string v0, "OplusUidPurStats"

    const-string v1, "appFreezeDataNotify !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/oplus/network/OplusUidPurStats$1;->this$0:Lcom/oplus/network/OplusUidPurStats;

    invoke-static {v0}, Lcom/oplus/network/OplusUidPurStats;->-$$Nest$fgetmCbList(Lcom/oplus/network/OplusUidPurStats;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/oplus/network/OplusUidPurStats$1;->this$0:Lcom/oplus/network/OplusUidPurStats;

    invoke-static {v1}, Lcom/oplus/network/OplusUidPurStats;->-$$Nest$fgetmCbList(Lcom/oplus/network/OplusUidPurStats;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;

    .line 52
    .local v2, "cb":Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;
    invoke-interface {v2, p1}, Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;->appFreezeDataNotify(Ljava/lang/String;)V

    .line 53
    .end local v2    # "cb":Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;
    goto :goto_0

    .line 54
    :cond_0
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist uidNetworkChange(IZZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "networkFail"    # Z
    .param p3, "isForegroundApp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "OplusUidPurStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uidNetworkChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/oplus/network/OplusUidPurStats$1;->this$0:Lcom/oplus/network/OplusUidPurStats;

    invoke-static {v0}, Lcom/oplus/network/OplusUidPurStats;->-$$Nest$fgetmCbList(Lcom/oplus/network/OplusUidPurStats;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/oplus/network/OplusUidPurStats$1;->this$0:Lcom/oplus/network/OplusUidPurStats;

    invoke-static {v1}, Lcom/oplus/network/OplusUidPurStats;->-$$Nest$fgetmCbList(Lcom/oplus/network/OplusUidPurStats;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;

    .line 42
    .local v2, "cb":Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;
    invoke-interface {v2, p1, p2, p3}, Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;->uidNetworkChange(IZZ)V

    .line 43
    .end local v2    # "cb":Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;
    goto :goto_0

    .line 44
    :cond_0
    monitor-exit v0

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
