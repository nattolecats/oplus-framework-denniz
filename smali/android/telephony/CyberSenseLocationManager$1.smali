.class Landroid/telephony/CyberSenseLocationManager$1;
.super Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;
.source "CyberSenseLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CyberSenseLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/CyberSenseLocationManager;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/CyberSenseLocationManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/CyberSenseLocationManager;

    .line 165
    iput-object p1, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/signalMap/cybersenselocation/ICyberSenseLocationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCslCollectionDataChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CyberSenseCellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CyberSenseCellInfo;>;"
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v0}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationMockCallback(Landroid/telephony/CyberSenseLocationManager;)Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v0}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationMockCallback(Landroid/telephony/CyberSenseLocationManager;)Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;->onCslCollectionDataChanged(Ljava/util/List;)V

    .line 205
    :cond_0
    return-void
.end method

.method public blacklist onCslNetworkResultChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/LocationResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/LocationResult;>;"
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v0}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationMockCallback(Landroid/telephony/CyberSenseLocationManager;)Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v0}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationMockCallback(Landroid/telephony/CyberSenseLocationManager;)Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;->onCslNetworkResultChanged(Ljava/util/List;)V

    .line 197
    :cond_0
    return-void
.end method

.method public blacklist onCslResultChanged(Landroid/telephony/LocationResult;)V
    .locals 3
    .param p1, "result"    # Landroid/telephony/LocationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v0}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationCallbacks(Landroid/telephony/CyberSenseLocationManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v1}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationCallbacks(Landroid/telephony/CyberSenseLocationManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CyberSenseLocationManager$ICslCallback;

    .line 171
    .local v2, "callback":Landroid/telephony/CyberSenseLocationManager$ICslCallback;
    invoke-interface {v2, p1}, Landroid/telephony/CyberSenseLocationManager$ICslCallback;->onCslResultChanged(Landroid/telephony/LocationResult;)V

    .line 172
    .end local v2    # "callback":Landroid/telephony/CyberSenseLocationManager$ICslCallback;
    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v1}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationMockCallback(Landroid/telephony/CyberSenseLocationManager;)Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v1}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationMockCallback(Landroid/telephony/CyberSenseLocationManager;)Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;->onCslResultChanged(Landroid/telephony/LocationResult;)V

    .line 176
    :cond_1
    monitor-exit v0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onCslStateChanged(I)V
    .locals 3
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v0}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationCallbacks(Landroid/telephony/CyberSenseLocationManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v1}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationCallbacks(Landroid/telephony/CyberSenseLocationManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CyberSenseLocationManager$ICslCallback;

    .line 183
    .local v2, "callback":Landroid/telephony/CyberSenseLocationManager$ICslCallback;
    invoke-interface {v2, p1}, Landroid/telephony/CyberSenseLocationManager$ICslCallback;->onCslStateChanged(I)V

    .line 184
    .end local v2    # "callback":Landroid/telephony/CyberSenseLocationManager$ICslCallback;
    goto :goto_0

    .line 185
    :cond_0
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v1}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationMockCallback(Landroid/telephony/CyberSenseLocationManager;)Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v1}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationMockCallback(Landroid/telephony/CyberSenseLocationManager;)Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;->onCslStateChanged(I)V

    .line 188
    :cond_1
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onMockPolicyChanged(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "policy"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v0}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationMockCallback(Landroid/telephony/CyberSenseLocationManager;)Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Landroid/telephony/CyberSenseLocationManager$1;->this$0:Landroid/telephony/CyberSenseLocationManager;

    invoke-static {v0}, Landroid/telephony/CyberSenseLocationManager;->-$$Nest$fgetmLocationMockCallback(Landroid/telephony/CyberSenseLocationManager;)Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/CyberSenseLocationManager$ICslMockCallback;->onMockPolicyChanged(Landroid/os/Bundle;)V

    .line 212
    :cond_0
    return-void
.end method
