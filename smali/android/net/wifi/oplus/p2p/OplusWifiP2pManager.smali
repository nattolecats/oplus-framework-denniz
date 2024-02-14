.class public Landroid/net/wifi/oplus/p2p/OplusWifiP2pManager;
.super Ljava/lang/Object;
.source "OplusWifiP2pManager.java"

# interfaces
.implements Landroid/net/wifi/oplus/p2p/IOplusWifiP2pManager;


# static fields
.field public static final whitelist RELO_P2P_GC:I = 0x4

.field public static final whitelist RELO_P2P_GO:I = 0x3

.field public static final whitelist RELO_P2P_UNKNOWN:I = 0x5

.field public static final whitelist RELO_SAP:I = 0x2

.field public static final whitelist RELO_STA:I = 0x1

.field public static final whitelist RELO_UNKNOWN:I = 0x0

.field public static final whitelist STATUS_BT_CONNECT_COMPLETE:I = 0xe

.field public static final whitelist STATUS_BT_CONNECT_START:I = 0xd

.field public static final whitelist STATUS_BT_DISCOVER_START:I = 0xb

.field public static final whitelist STATUS_BT_DISCOVER_STOP:I = 0xc

.field public static final whitelist STATUS_BT_UNKNOWN:I = 0xa

.field public static final whitelist STATUS_CAST_CONNECTED:I = 0x62

.field public static final whitelist STATUS_CAST_DISCONNECTED:I = 0x63

.field public static final whitelist STATUS_P2P_CONNECT_COMPLETE:I = 0x4

.field public static final whitelist STATUS_P2P_CONNECT_START:I = 0x3

.field public static final whitelist STATUS_P2P_DISCOVER_START:I = 0x1

.field public static final whitelist STATUS_P2P_DISCOVER_STOP:I = 0x2

.field public static final whitelist STATUS_P2P_UNKNOWN:I = 0x0

.field public static final whitelist STATUS_RTSP_CONNECT_COMPLETE:I = 0x18

.field public static final whitelist STATUS_RTSP_CONNECT_START:I = 0x17

.field public static final whitelist STATUS_RTSP_DISCOVER_START:I = 0x15

.field public static final whitelist STATUS_RTSP_DISCOVER_STOP:I = 0x16

.field public static final whitelist STATUS_RTSP_UNKNOWN:I = 0x14

.field private static final blacklist TAG:Ljava/lang/String; = "OplusWifiP2pManager"

.field public static final whitelist TYPE_CAST_OCAR:I = 0x4

.field public static final whitelist TYPE_CAST_OPPOTV:I = 0x2

.field public static final whitelist TYPE_CAST_PAD:I = 0x5

.field public static final whitelist TYPE_CAST_PCCONNECT:I = 0x3

.field public static final whitelist TYPE_CAST_UNKNOWN:I = 0x0

.field public static final whitelist TYPE_CAST_WFD:I = 0x1

.field public static final whitelist TYPE_OSHARE:I = 0x8

.field public static final whitelist TYPE_RESERVE:I = 0x9


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field blacklist mService:Landroid/net/wifi/IOplusWifiManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/net/wifi/oplus/p2p/OplusWifiP2pManager;->mContext:Landroid/content/Context;

    .line 90
    const-string v0, "opluswifikitservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IOplusWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IOplusWifiManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/oplus/p2p/OplusWifiP2pManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    .line 91
    return-void
.end method


# virtual methods
.method public whitelist saveExternalPeerAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    if-nez p1, :cond_0

    .line 120
    const-string v0, "OplusWifiP2pManager"

    const-string v1, "saveExternalPeerAddress the address is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 124
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/oplus/p2p/OplusWifiP2pManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IOplusWifiManager;->saveExternalPeerAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setCastStatus(IIILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "role"    # I
    .param p4, "reverse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/oplus/p2p/OplusWifiP2pManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/net/wifi/IOplusWifiManager;->setCastStatus(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setNfcTriggered(Z)Z
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/oplus/p2p/OplusWifiP2pManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IOplusWifiManager;->setNfcTriggered(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 108
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist setOshareEnabled(ZIZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "freq"    # I
    .param p3, "isGo"    # Z
    .param p4, "isStaticIp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/oplus/p2p/OplusWifiP2pManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/net/wifi/IOplusWifiManager;->setOshareEnabled(ZIZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setPcAutonomousGo(Z)Z
    .locals 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/net/wifi/oplus/p2p/OplusWifiP2pManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/net/wifi/IOplusWifiManager;->setPcAutonomousGo(ZILjava/lang/String;)Z

    move-result v0

    .line 141
    return v0
.end method

.method public whitelist setPcAutonomousGo(ZILjava/lang/String;)Z
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "freq"    # I
    .param p3, "reverse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/net/wifi/oplus/p2p/OplusWifiP2pManager;->mService:Landroid/net/wifi/IOplusWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IOplusWifiManager;->setPcAutonomousGo(ZILjava/lang/String;)Z

    move-result v0

    .line 152
    return v0
.end method
