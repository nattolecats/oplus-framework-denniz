.class Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;
.super Landroid/bluetooth/IOplusBluetoothManagerCallback$Stub;
.source "BluetoothAdapterExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapterExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OplusBtMonitorCallbackWrapper"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/bluetooth/OplusBluetoothMonitorCallback;

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapterExtImpl;Landroid/bluetooth/OplusBluetoothMonitorCallback;)V
    .locals 0
    .param p2, "callback"    # Landroid/bluetooth/OplusBluetoothMonitorCallback;

    .line 920
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-direct {p0}, Landroid/bluetooth/IOplusBluetoothManagerCallback$Stub;-><init>()V

    .line 921
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;->mCallback:Landroid/bluetooth/OplusBluetoothMonitorCallback;

    .line 922
    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/bluetooth/OplusBluetoothMonitorCallback;
    .locals 1

    .line 937
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;->mCallback:Landroid/bluetooth/OplusBluetoothMonitorCallback;

    return-object v0
.end method

.method public blacklist onBluetoothManagerMonitor(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "monitorEvent"    # Ljava/lang/String;
    .param p2, "monitResult"    # Ljava/util/Map;

    .line 930
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    const-string v1, "enter onBluetoothManagerMonitor"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$mdebugLog(Landroid/bluetooth/BluetoothAdapterExtImpl;Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;->mCallback:Landroid/bluetooth/OplusBluetoothMonitorCallback;

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/OplusBluetoothMonitorCallback;->onBluetoothMonitor(Ljava/lang/String;Ljava/util/Map;)V

    .line 934
    :cond_0
    return-void
.end method

.method public blacklist startRegistration()V
    .locals 2

    .line 925
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;->this$0:Landroid/bluetooth/BluetoothAdapterExtImpl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapterExtImpl;->-$$Nest$fgetmBluetoothMonitorClients(Landroid/bluetooth/BluetoothAdapterExtImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapterExtImpl$OplusBtMonitorCallbackWrapper;->mCallback:Landroid/bluetooth/OplusBluetoothMonitorCallback;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    return-void
.end method
