.class public Lcom/oplus/wrapper/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;
    }
.end annotation


# instance fields
.field private final blacklist mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;",
            "Landroid/net/wifi/WifiManager$ActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor whitelist <init>(Landroid/net/wifi/WifiManager;)V
    .locals 1
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/wrapper/net/wifi/WifiManager;->mListenerMap:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lcom/oplus/wrapper/net/wifi/WifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 44
    return-void
.end method

.method private blacklist getActionListener(Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 2
    .param p1, "wrapperActionListener"    # Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;

    .line 94
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/oplus/wrapper/net/wifi/WifiManager;->mListenerMap:Ljava/util/Map;

    new-instance v1, Lcom/oplus/wrapper/net/wifi/WifiManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/oplus/wrapper/net/wifi/WifiManager$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/wrapper/net/wifi/WifiManager;Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method


# virtual methods
.method public whitelist connect(ILcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)V
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "listener"    # Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;

    .line 67
    invoke-direct {p0, p2}, Lcom/oplus/wrapper/net/wifi/WifiManager;->getActionListener(Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v0

    .line 68
    .local v0, "actionListener":Landroid/net/wifi/WifiManager$ActionListener;
    iget-object v1, p0, Lcom/oplus/wrapper/net/wifi/WifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1, v0}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 69
    return-void
.end method

.method public whitelist connect(Landroid/net/wifi/WifiConfiguration;Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;

    .line 89
    invoke-direct {p0, p2}, Lcom/oplus/wrapper/net/wifi/WifiManager;->getActionListener(Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v0

    .line 90
    .local v0, "actionListener":Landroid/net/wifi/WifiManager$ActionListener;
    iget-object v1, p0, Lcom/oplus/wrapper/net/wifi/WifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 91
    return-void
.end method

.method public whitelist forget(ILcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "listener"    # Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;

    .line 129
    invoke-direct {p0, p2}, Lcom/oplus/wrapper/net/wifi/WifiManager;->getActionListener(Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v0

    .line 130
    .local v0, "actionListener":Landroid/net/wifi/WifiManager$ActionListener;
    iget-object v1, p0, Lcom/oplus/wrapper/net/wifi/WifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 131
    return-void
.end method

.method public whitelist getWifiApState()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/oplus/wrapper/net/wifi/WifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$getActionListener$0$com-oplus-wrapper-net-wifi-WifiManager(Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .param p1, "wrapperActionListener"    # Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;
    .param p2, "actionListener"    # Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;

    .line 98
    new-instance v0, Lcom/oplus/wrapper/net/wifi/WifiManager$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/wrapper/net/wifi/WifiManager$1;-><init>(Lcom/oplus/wrapper/net/wifi/WifiManager;Lcom/oplus/wrapper/net/wifi/WifiManager$ActionListener;)V

    return-object v0
.end method
