.class Lcom/oplus/network/OlkManager$InternalCallback;
.super Lcom/oplus/network/IOlkInternalCallback$Stub;
.source "OlkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/OlkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/network/OlkManager;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/network/OlkManager;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-direct {p0}, Lcom/oplus/network/IOlkInternalCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/network/OlkManager;Lcom/oplus/network/OlkManager$InternalCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/network/OlkManager$InternalCallback;-><init>(Lcom/oplus/network/OlkManager;)V

    return-void
.end method


# virtual methods
.method public blacklist olkClearSocketPriorityCallback(Ljava/lang/String;Lcom/oplus/network/OlkStreamParam;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/oplus/network/OlkStreamParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    const/16 v0, 0x1f4

    .line 247
    .local v0, "result":I
    const/16 v1, 0x1f4

    .line 248
    .local v1, "tempResult":I
    iget-object v2, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v2}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetclearSocketPriorityList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 249
    :try_start_0
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearSocketPriorityList len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v5}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetclearSocketPriorityList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/network/OlkManager;->-$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V

    .line 250
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InternalCallback() olkClearSocketPriorityCallback() pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", param = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/network/OlkManager;->-$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v3}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetclearSocketPriorityList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/network/OlkManager$OlkListener;

    .line 252
    .local v4, "listener":Lcom/oplus/network/OlkManager$OlkListener;
    invoke-interface {v4, p1, p2}, Lcom/oplus/network/OlkManager$OlkListener;->clearSocketPriorityCallback(Ljava/lang/String;Lcom/oplus/network/OlkStreamParam;)V

    .line 253
    .end local v4    # "listener":Lcom/oplus/network/OlkManager$OlkListener;
    goto :goto_0

    .line 254
    :cond_0
    monitor-exit v2

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public blacklist olkSetApBandwithCallback(Ljava/lang/String;II)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "rxBw"    # I
    .param p3, "txBw"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    const/16 v0, 0x1f4

    .line 221
    .local v0, "result":I
    const/16 v1, 0x1f4

    .line 222
    .local v1, "tempResult":I
    iget-object v2, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v2}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetsetApBandwidthList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 223
    :try_start_0
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setApBandwidthList len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v5}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetsetApBandwidthList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/network/OlkManager;->-$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InternalCallback() olkSetApBandwithCallback() pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rxBw = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", txBw = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/network/OlkManager;->-$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v3}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetsetApBandwidthList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/network/OlkManager$OlkListener;

    .line 226
    .local v4, "listener":Lcom/oplus/network/OlkManager$OlkListener;
    invoke-interface {v4, p1, p2, p3}, Lcom/oplus/network/OlkManager$OlkListener;->setApBandwithCallback(Ljava/lang/String;II)V

    .line 227
    .end local v4    # "listener":Lcom/oplus/network/OlkManager$OlkListener;
    goto :goto_0

    .line 228
    :cond_0
    monitor-exit v2

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public blacklist olkSetApStateCallback(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "delay"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    const/16 v0, 0x1f4

    .line 208
    .local v0, "result":I
    const/16 v1, 0x1f4

    .line 209
    .local v1, "tempResult":I
    iget-object v2, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v2}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetsetApStateList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 210
    :try_start_0
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setApStateList len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v5}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetsetApStateList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/network/OlkManager;->-$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InternalCallback() olkSetApStateCallback() pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", delay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/network/OlkManager;->-$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v3}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetsetApStateList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/network/OlkManager$OlkListener;

    .line 213
    .local v4, "listener":Lcom/oplus/network/OlkManager$OlkListener;
    invoke-interface {v4, p1, p2}, Lcom/oplus/network/OlkManager$OlkListener;->setApStateCallback(Ljava/lang/String;Z)V

    .line 214
    .end local v4    # "listener":Lcom/oplus/network/OlkManager$OlkListener;
    goto :goto_0

    .line 215
    :cond_0
    monitor-exit v2

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public blacklist olkSetRealTimeEventCallback(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    const/16 v0, 0x1f4

    .line 260
    .local v0, "result":I
    const/16 v1, 0x1f4

    .line 261
    .local v1, "tempResult":I
    iget-object v2, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v2}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetsetRealTimeList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 262
    :try_start_0
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRealTimeList len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v5}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetsetRealTimeList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/network/OlkManager;->-$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InternalCallback() olkSetRealTimeEventCallback() pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/network/OlkManager;->-$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v3}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetsetRealTimeList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/network/OlkManager$OlkListener;

    .line 265
    .local v4, "listener":Lcom/oplus/network/OlkManager$OlkListener;
    invoke-interface {v4, p1, p2}, Lcom/oplus/network/OlkManager$OlkListener;->setRealTimeEventCallback(Ljava/lang/String;I)V

    .line 266
    .end local v4    # "listener":Lcom/oplus/network/OlkManager$OlkListener;
    goto :goto_0

    .line 267
    :cond_0
    monitor-exit v2

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public blacklist olkSetSocketPriorityCallback(Ljava/lang/String;Lcom/oplus/network/OlkStreamParam;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/oplus/network/OlkStreamParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    const/16 v0, 0x1f4

    .line 234
    .local v0, "result":I
    const/16 v1, 0x1f4

    .line 235
    .local v1, "tempResult":I
    iget-object v2, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v2}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetsetSocketPriorityList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 236
    :try_start_0
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSocketPriorityList len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v5}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetsetSocketPriorityList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/network/OlkManager;->-$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InternalCallback() olkSetSocketPriorityCallback() pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  param = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/network/OlkManager;->-$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V

    .line 238
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v3}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetsetSocketPriorityList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/network/OlkManager$OlkListener;

    .line 239
    .local v4, "listener":Lcom/oplus/network/OlkManager$OlkListener;
    invoke-interface {v4, p1, p2}, Lcom/oplus/network/OlkManager$OlkListener;->setSocketPriorityCallback(Ljava/lang/String;Lcom/oplus/network/OlkStreamParam;)V

    .line 240
    .end local v4    # "listener":Lcom/oplus/network/OlkManager$OlkListener;
    goto :goto_0

    .line 241
    :cond_0
    monitor-exit v2

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public blacklist olkUpdateCellularEnable(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    const/16 v0, 0x1f4

    .line 273
    .local v0, "result":I
    const/16 v1, 0x1f4

    .line 274
    .local v1, "tempResult":I
    iget-object v2, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v2}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetupdateCellularEnableList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 275
    :try_start_0
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCellularEnableList len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v5}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetupdateCellularEnableList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/network/OlkManager;->-$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InternalCallback() olkUpdateCellularEnable() pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/network/OlkManager;->-$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/oplus/network/OlkManager$InternalCallback;->this$0:Lcom/oplus/network/OlkManager;

    invoke-static {v3}, Lcom/oplus/network/OlkManager;->-$$Nest$fgetupdateCellularEnableList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/network/OlkManager$OlkListener;

    .line 278
    .local v4, "listener":Lcom/oplus/network/OlkManager$OlkListener;
    invoke-interface {v4, p1, p2}, Lcom/oplus/network/OlkManager$OlkListener;->setUpdateCellularEnable(Ljava/lang/String;Z)V

    .line 279
    .end local v4    # "listener":Lcom/oplus/network/OlkManager$OlkListener;
    goto :goto_0

    .line 280
    :cond_0
    monitor-exit v2

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
