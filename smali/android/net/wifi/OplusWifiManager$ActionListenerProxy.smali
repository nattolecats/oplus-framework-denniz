.class Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;
.super Landroid/net/wifi/IConnectListener$Stub;
.source "OplusWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/OplusWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionListenerProxy"
.end annotation


# instance fields
.field private final blacklist mActionTag:Ljava/lang/String;

.field private final blacklist mCallback:Landroid/net/wifi/OplusWifiManager$ActionListener;

.field private final blacklist mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/net/wifi/OplusWifiManager;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/OplusWifiManager;Ljava/lang/String;Landroid/os/Looper;Landroid/net/wifi/OplusWifiManager$ActionListener;)V
    .locals 0
    .param p2, "actionTag"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "callback"    # Landroid/net/wifi/OplusWifiManager$ActionListener;

    .line 1244
    iput-object p1, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->this$0:Landroid/net/wifi/OplusWifiManager;

    invoke-direct {p0}, Landroid/net/wifi/IConnectListener$Stub;-><init>()V

    .line 1245
    iput-object p2, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->mActionTag:Ljava/lang/String;

    .line 1246
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->mHandler:Landroid/os/Handler;

    .line 1247
    iput-object p4, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->mCallback:Landroid/net/wifi/OplusWifiManager$ActionListener;

    .line 1248
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onFailure$1$android-net-wifi-OplusWifiManager$ActionListenerProxy(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 1268
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->mCallback:Landroid/net/wifi/OplusWifiManager$ActionListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/OplusWifiManager$ActionListener;->onFailure(I)V

    .line 1269
    return-void
.end method

.method synthetic blacklist lambda$onSuccess$0$android-net-wifi-OplusWifiManager$ActionListenerProxy()V
    .locals 1

    .line 1257
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->mCallback:Landroid/net/wifi/OplusWifiManager$ActionListener;

    invoke-interface {v0}, Landroid/net/wifi/OplusWifiManager$ActionListener;->onSuccess()V

    .line 1258
    return-void
.end method

.method public blacklist onFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 1264
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->this$0:Landroid/net/wifi/OplusWifiManager;

    invoke-static {v0}, Landroid/net/wifi/OplusWifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/OplusWifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionListenerProxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->mActionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1270
    return-void
.end method

.method public blacklist onSuccess()V
    .locals 2

    .line 1253
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->this$0:Landroid/net/wifi/OplusWifiManager;

    invoke-static {v0}, Landroid/net/wifi/OplusWifiManager;->-$$Nest$fgetmVerboseLoggingEnabled(Landroid/net/wifi/OplusWifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionListenerProxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->mActionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusWifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/net/wifi/OplusWifiManager$ActionListenerProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/OplusWifiManager$ActionListenerProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1259
    return-void
.end method
