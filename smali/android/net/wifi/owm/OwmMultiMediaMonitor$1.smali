.class Landroid/net/wifi/owm/OwmMultiMediaMonitor$1;
.super Ljava/lang/Object;
.source "OwmMultiMediaMonitor.java"

# interfaces
.implements Lcom/oplus/network/OlkManager$OlkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmMultiMediaMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    .line 82
    iput-object p1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$1;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist clearSocketPriorityCallback(Ljava/lang/String;Lcom/oplus/network/OlkStreamParam;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/oplus/network/OlkStreamParam;

    .line 104
    return-void
.end method

.method public whitelist setApBandwithCallback(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "rxBw"    # I
    .param p3, "txBw"    # I

    .line 98
    return-void
.end method

.method public whitelist setApStateCallback(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "delay"    # Z

    .line 86
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$1;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " report stutter event to OLK callback, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmMultiMediaMonitor;Ljava/lang/String;)V

    .line 87
    if-eqz p2, :cond_0

    .line 88
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$1;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$fgetmOLKStutteringApps(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$1;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->notifyVideoStutterToWifi(ILjava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$1;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->-$$Nest$fgetmOLKStutteringApps(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$1;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->notifyStutterEndToWifi(ILjava/lang/String;)V

    .line 95
    :goto_0
    return-void
.end method

.method public whitelist setRealTimeEventCallback(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "event"    # I

    .line 107
    return-void
.end method

.method public whitelist setSocketPriorityCallback(Ljava/lang/String;Lcom/oplus/network/OlkStreamParam;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/oplus/network/OlkStreamParam;

    .line 101
    return-void
.end method
