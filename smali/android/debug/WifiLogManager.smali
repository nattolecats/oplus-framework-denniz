.class public Landroid/debug/WifiLogManager;
.super Landroid/debug/IDebugLogManager;
.source "WifiLogManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Landroid/debug/WifiLogManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mWifiManager:Landroid/net/wifi/OplusWifiManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/debug/WifiLogManager;->TAG_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/debug/WifiLogManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/debug/WifiLogManager;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Landroid/debug/WifiLogManager;->sInstance:Landroid/debug/WifiLogManager;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Landroid/debug/IDebugLogManager;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/debug/WifiLogManager;->mWifiManager:Landroid/net/wifi/OplusWifiManager;

    .line 29
    iput-object p1, p0, Landroid/debug/WifiLogManager;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Landroid/net/wifi/OplusWifiManager;

    invoke-direct {v0, p1}, Landroid/net/wifi/OplusWifiManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/debug/WifiLogManager;->mWifiManager:Landroid/net/wifi/OplusWifiManager;

    .line 31
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/debug/WifiLogManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    const-class v0, Landroid/debug/WifiLogManager;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Landroid/debug/WifiLogManager;->sInstance:Landroid/debug/WifiLogManager;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Landroid/debug/WifiLogManager;

    invoke-direct {v1, p0}, Landroid/debug/WifiLogManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/debug/WifiLogManager;->sInstance:Landroid/debug/WifiLogManager;

    .line 38
    :cond_0
    sget-object v1, Landroid/debug/WifiLogManager;->sInstance:Landroid/debug/WifiLogManager;

    monitor-exit v0

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist setLogDump()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    sget-object v0, Landroid/debug/WifiLogManager;->TAG:Ljava/lang/String;

    const-string v1, "setLogDump: "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Landroid/debug/WifiLogManager;->mWifiManager:Landroid/net/wifi/OplusWifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/OplusWifiManager;->setLogDump()V

    .line 55
    return-void
.end method

.method public blacklist setLogOff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    sget-object v0, Landroid/debug/WifiLogManager;->TAG:Ljava/lang/String;

    const-string v1, "setLogOff: "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Landroid/debug/WifiLogManager;->mWifiManager:Landroid/net/wifi/OplusWifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/OplusWifiManager;->setLogOff()V

    .line 50
    return-void
.end method

.method public blacklist setLogOn(JLjava/lang/String;)V
    .locals 3
    .param p1, "maxSize"    # J
    .param p3, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    sget-object v0, Landroid/debug/WifiLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLogOn: maxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Landroid/debug/WifiLogManager;->mWifiManager:Landroid/net/wifi/OplusWifiManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/OplusWifiManager;->setLogOn(JLjava/lang/String;)V

    .line 45
    return-void
.end method
