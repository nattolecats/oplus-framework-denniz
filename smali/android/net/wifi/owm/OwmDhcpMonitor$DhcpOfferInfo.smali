.class Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;
.super Ljava/lang/Object;
.source "OwmDhcpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmDhcpMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpOfferInfo"
.end annotation


# instance fields
.field public blacklist gateway:Ljava/lang/String;

.field public blacklist ipAddr:Ljava/lang/String;

.field public blacklist ipAddrPrefixLen:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmDhcpMonitor;)V
    .locals 0

    .line 459
    iput-object p1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmDhcpMonitor;Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;-><init>(Landroid/net/wifi/owm/OwmDhcpMonitor;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->ipAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->ipAddrPrefixLen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpOfferInfo;->gateway:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
