.class public Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;
.super Landroid/net/wifi/oplus/util/OplusDhcpPacket;
.source "OplusDhcpNakPacket.java"


# direct methods
.method constructor blacklist <init>(ISLjava/net/Inet4Address;[BZ)V
    .locals 9
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "relayIp"    # Ljava/net/Inet4Address;
    .param p4, "clientMac"    # [B
    .param p5, "broadcast"    # Z

    .line 46
    sget-object v3, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v4, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v5, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 12
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .line 59
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    .local v0, "result":Ljava/nio/ByteBuffer;
    sget-object v10, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 62
    .local v10, "destIp":Ljava/net/Inet4Address;
    sget-object v11, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 64
    .local v11, "srcIp":Ljava/net/Inet4Address;
    iget-boolean v9, p0, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->mBroadcast:Z

    const/4 v8, 0x2

    move-object v1, p0

    move v2, p1

    move-object v3, v10

    move-object v4, v11

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 66
    return-object v0
.end method

.method blacklist finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 73
    const/16 v0, 0x35

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 74
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v1, 0x36

    invoke-static {p1, v1, v0}, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 75
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->mMessage:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-static {p1, v1, v0}, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 76
    invoke-static {p1}, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 77
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 51
    invoke-super {p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NAK, reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->mMessage:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "(none)"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;->mMessage:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
