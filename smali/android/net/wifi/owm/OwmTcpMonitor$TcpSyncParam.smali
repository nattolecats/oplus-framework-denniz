.class Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;
.super Ljava/lang/Object;
.source "OwmTcpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmTcpMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TcpSyncParam"
.end annotation


# instance fields
.field public blacklist errCode:I

.field public blacklist ipAddr:Ljava/lang/String;

.field public blacklist latency:I

.field public blacklist netId:I

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmTcpMonitor;

.field public blacklist uid:I


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmTcpMonitor;)V
    .locals 0

    .line 409
    iput-object p1, p0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->this$0:Landroid/net/wifi/owm/OwmTcpMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    const/4 p1, 0x0

    iput p1, p0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->netId:I

    .line 411
    iput p1, p0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->uid:I

    .line 412
    iput p1, p0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->errCode:I

    .line 413
    iput p1, p0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->latency:I

    .line 414
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->ipAddr:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmTcpMonitor;Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;-><init>(Landroid/net/wifi/owm/OwmTcpMonitor;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TcpSyncParam: netId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " latency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->latency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ipAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmTcpMonitor$TcpSyncParam;->ipAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
