.class public abstract Landroid/net/wifi/oplus/util/OplusDhcpPacket;
.super Ljava/lang/Object;
.source "OplusDhcpPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;
    }
.end annotation


# static fields
.field protected static final blacklist CLIENT_ID_ETHER:B = 0x1t

.field protected static final blacklist DHCP_BOOTREPLY:B = 0x2t

.field protected static final blacklist DHCP_BOOTREQUEST:B = 0x1t

.field protected static final blacklist DHCP_BROADCAST_ADDRESS:B = 0x1ct

.field static final blacklist DHCP_CLIENT:S = 0x44s

.field protected static final blacklist DHCP_CLIENT_IDENTIFIER:B = 0x3dt

.field protected static final blacklist DHCP_DNS_SERVER:B = 0x6t

.field protected static final blacklist DHCP_DOMAIN_NAME:B = 0xft

.field protected static final blacklist DHCP_HOST_NAME:B = 0xct

.field protected static final blacklist DHCP_LEASE_TIME:B = 0x33t

.field private static final blacklist DHCP_MAGIC_COOKIE:I = 0x63825363

.field protected static final blacklist DHCP_MAX_MESSAGE_SIZE:B = 0x39t

.field protected static final blacklist DHCP_MESSAGE:B = 0x38t

.field protected static final blacklist DHCP_MESSAGE_TYPE:B = 0x35t

.field protected static final blacklist DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field protected static final blacklist DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field protected static final blacklist DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field protected static final blacklist DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field protected static final blacklist DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field protected static final blacklist DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field protected static final blacklist DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field protected static final blacklist DHCP_MTU:B = 0x1at

.field protected static final blacklist DHCP_OPTION_END:B = -0x1t

.field protected static final blacklist DHCP_OPTION_PAD:B = 0x0t

.field protected static final blacklist DHCP_PARAMETER_LIST:B = 0x37t

.field protected static final blacklist DHCP_REBINDING_TIME:B = 0x3bt

.field protected static final blacklist DHCP_RENEWAL_TIME:B = 0x3at

.field protected static final blacklist DHCP_REQUESTED_IP:B = 0x32t

.field protected static final blacklist DHCP_ROUTER:B = 0x3t

.field static final blacklist DHCP_SERVER:S = 0x43s

.field protected static final blacklist DHCP_SERVER_IDENTIFIER:B = 0x36t

.field protected static final blacklist DHCP_SUBNET_MASK:B = 0x1t

.field protected static final blacklist DHCP_VENDOR_CLASS_ID:B = 0x3ct

.field protected static final blacklist DHCP_VENDOR_INFO:B = 0x2bt

.field public static final whitelist ENCAP_BOOTP:I = 0x2

.field public static final whitelist ENCAP_L2:I = 0x0

.field public static final whitelist ENCAP_L3:I = 0x1

.field public static final whitelist ETHER_BROADCAST:[B

.field public static final whitelist HWADDR_LEN:I = 0x10

.field public static final whitelist INADDR_ANY:Ljava/net/Inet4Address;

.field public static final whitelist INADDR_BROADCAST:Ljava/net/Inet4Address;

.field public static final whitelist INFINITE_LEASE:I = -0x1

.field private static final blacklist IP_FLAGS_OFFSET:S = 0x4000s

.field private static final blacklist IP_TOS_LOWDELAY:B = 0x10t

.field private static final blacklist IP_TTL:B = 0x40t

.field private static final blacklist IP_TYPE_UDP:B = 0x11t

.field private static final blacklist IP_VERSION_HEADER_LEN:B = 0x45t

.field protected static final blacklist MAX_LENGTH:I = 0x5dc

.field private static final blacklist MAX_MTU:I = 0x5dc

.field public static final whitelist MAX_OPTION_LEN:I = 0xff

.field public static final whitelist MINIMUM_LEASE:I = 0x3c

.field private static final blacklist MIN_MTU:I = 0x500

.field public static final whitelist MIN_PACKET_LENGTH_BOOTP:I = 0xec

.field public static final whitelist MIN_PACKET_LENGTH_L2:I = 0x116

.field public static final whitelist MIN_PACKET_LENGTH_L3:I = 0x108

.field protected static final blacklist TAG:Ljava/lang/String; = "OplusDhcpPacket"

.field static blacklist testOverrideHostname:Ljava/lang/String;

.field static blacklist testOverrideVendorId:Ljava/lang/String;


# instance fields
.field protected blacklist mBroadcast:Z

.field protected blacklist mBroadcastAddress:Ljava/net/Inet4Address;

.field protected final blacklist mClientIp:Ljava/net/Inet4Address;

.field protected final blacklist mClientMac:[B

.field protected blacklist mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mDomainName:Ljava/lang/String;

.field protected blacklist mGateways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mHostName:Ljava/lang/String;

.field protected blacklist mLeaseTime:Ljava/lang/Integer;

.field protected blacklist mMaxMessageSize:Ljava/lang/Short;

.field protected blacklist mMessage:Ljava/lang/String;

.field protected blacklist mMtu:Ljava/lang/Short;

.field private final blacklist mNextIp:Ljava/net/Inet4Address;

.field private final blacklist mRelayIp:Ljava/net/Inet4Address;

.field protected blacklist mRequestedIp:Ljava/net/Inet4Address;

.field protected blacklist mRequestedParams:[B

.field protected final blacklist mSecs:S

.field protected blacklist mServerIdentifier:Ljava/net/Inet4Address;

.field protected blacklist mSubnetMask:Ljava/net/Inet4Address;

.field protected blacklist mT1:Ljava/lang/Integer;

.field protected blacklist mT2:Ljava/lang/Integer;

.field protected final blacklist mTransId:I

.field protected blacklist mVendorId:Ljava/lang/String;

.field protected blacklist mVendorInfo:Ljava/lang/String;

.field protected final blacklist mYourIp:Ljava/net/Inet4Address;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 57
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 58
    sget-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->ETHER_BROADCAST:[B

    .line 327
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    .line 328
    sput-object v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->testOverrideHostname:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method protected constructor blacklist <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V
    .locals 0
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "clientIp"    # Ljava/net/Inet4Address;
    .param p4, "yourIp"    # Ljava/net/Inet4Address;
    .param p5, "nextIp"    # Ljava/net/Inet4Address;
    .param p6, "relayIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B
    .param p8, "broadcast"    # Z

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput p1, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mTransId:I

    .line 334
    iput-short p2, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mSecs:S

    .line 335
    iput-object p3, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 336
    iput-object p4, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 337
    iput-object p5, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    .line 338
    iput-object p6, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    .line 339
    iput-object p7, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mClientMac:[B

    .line 340
    iput-boolean p8, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mBroadcast:Z

    .line 341
    return-void
.end method

.method protected static blacklist addTlv(Ljava/nio/ByteBuffer;BB)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # B

    .line 543
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 544
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 545
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 546
    return-void
.end method

.method protected static blacklist addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Integer;

    .line 607
    if-eqz p2, :cond_0

    .line 608
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 609
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 610
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 612
    :cond_0
    return-void
.end method

.method protected static blacklist addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "value"    # Ljava/lang/Short;

    .line 596
    if-eqz p2, :cond_0

    .line 597
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 598
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 599
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 601
    :cond_0
    return-void
.end method

.method protected static blacklist addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "str"    # Ljava/lang/String;

    .line 619
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    nop

    .line 623
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String is not US-ASCII: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static blacklist addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "addr"    # Ljava/net/Inet4Address;

    .line 567
    if-eqz p2, :cond_0

    .line 568
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 570
    :cond_0
    return-void
.end method

.method protected static blacklist addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;)V"
        }
    .end annotation

    .line 576
    .local p2, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 578
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 579
    .local v0, "optionLen":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    .line 584
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 585
    int-to-byte v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 587
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;

    .line 588
    .local v2, "addr":Ljava/net/Inet4Address;
    invoke-virtual {v2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 589
    .end local v2    # "addr":Ljava/net/Inet4Address;
    goto :goto_0

    .line 590
    :cond_1
    return-void

    .line 580
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHCP option too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 576
    .end local v0    # "optionLen":I
    :cond_3
    :goto_1
    return-void
.end method

.method protected static blacklist addTlv(Ljava/nio/ByteBuffer;B[B)V
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # B
    .param p2, "payload"    # [B

    .line 552
    if-eqz p2, :cond_1

    .line 553
    array-length v0, p2

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 557
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 558
    array-length v0, p2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 559
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 554
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHCP option too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_1
    :goto_0
    return-void
.end method

.method protected static blacklist addTlvEnd(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 629
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 630
    return-void
.end method

.method private blacklist checksum(Ljava/nio/ByteBuffer;III)I
    .locals 8
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "seed"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 501
    move v0, p2

    .line 502
    .local v0, "sum":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 506
    .local v1, "bufPosition":I
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 507
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    .line 510
    .local v2, "shortBuf":Ljava/nio/ShortBuffer;
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 512
    sub-int v3, p4, p3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [S

    .line 513
    .local v3, "shortArray":[S
    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 515
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-short v6, v3, v5

    .line 516
    .local v6, "s":S
    invoke-static {v6}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->intAbs(S)I

    move-result v7

    add-int/2addr v0, v7

    .line 515
    .end local v6    # "s":S
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 519
    :cond_0
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr p3, v4

    .line 522
    if-eq p4, p3, :cond_2

    .line 523
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    int-to-short v4, v4

    .line 526
    .local v4, "b":S
    if-gez v4, :cond_1

    .line 527
    add-int/lit16 v5, v4, 0x100

    int-to-short v4, v5

    .line 530
    :cond_1
    mul-int/lit16 v5, v4, 0x100

    add-int/2addr v0, v5

    .line 533
    .end local v4    # "b":S
    :cond_2
    shr-int/lit8 v4, v0, 0x10

    const v5, 0xffff

    and-int/2addr v4, v5

    and-int v6, v0, v5

    add-int/2addr v4, v6

    .line 534
    .end local v0    # "sum":I
    .local v4, "sum":I
    shr-int/lit8 v0, v4, 0x10

    and-int/2addr v0, v5

    add-int/2addr v0, v4

    and-int/2addr v0, v5

    .line 535
    .end local v4    # "sum":I
    .restart local v0    # "sum":I
    not-int v4, v0

    .line 536
    .local v4, "negated":I
    int-to-short v5, v4

    invoke-static {v5}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->intAbs(S)I

    move-result v5

    return v5
.end method

.method static blacklist decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/wifi/oplus/util/OplusDhcpPacket;
    .locals 67
    .param p0, "packet"    # Ljava/nio/ByteBuffer;
    .param p1, "pktType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;
        }
    .end annotation

    .line 759
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 760
    .local v3, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 761
    .local v4, "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/4 v5, 0x0

    .line 762
    .local v5, "serverIdentifier":Ljava/net/Inet4Address;
    const/4 v6, 0x0

    .line 763
    .local v6, "netMask":Ljava/net/Inet4Address;
    const/4 v7, 0x0

    .line 764
    .local v7, "message":Ljava/lang/String;
    const/4 v8, 0x0

    .line 765
    .local v8, "vendorId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 766
    .local v9, "vendorInfo":Ljava/lang/String;
    const/4 v10, 0x0

    .line 767
    .local v10, "expectedParams":[B
    const/4 v11, 0x0

    .line 768
    .local v11, "hostName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 769
    .local v12, "domainName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 770
    .local v0, "ipSrc":Ljava/net/Inet4Address;
    const/4 v13, 0x0

    .line 771
    .local v13, "ipDst":Ljava/net/Inet4Address;
    const/4 v14, 0x0

    .line 772
    .local v14, "bcAddr":Ljava/net/Inet4Address;
    const/4 v15, 0x0

    .line 778
    .local v15, "requestedIp":Ljava/net/Inet4Address;
    const/16 v16, 0x0

    .line 779
    .local v16, "mtu":Ljava/lang/Short;
    const/16 v17, 0x0

    .line 780
    .local v17, "maxMessageSize":Ljava/lang/Short;
    const/16 v18, 0x0

    .line 781
    .local v18, "leaseTime":Ljava/lang/Integer;
    const/16 v19, 0x0

    .line 782
    .local v19, "T1":Ljava/lang/Integer;
    const/16 v20, 0x0

    .line 785
    .local v20, "T2":Ljava/lang/Integer;
    const/16 v21, -0x1

    .line 787
    .local v21, "dhcpType":B
    move-object/from16 v22, v0

    .end local v0    # "ipSrc":Ljava/net/Inet4Address;
    .local v22, "ipSrc":Ljava/net/Inet4Address;
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 790
    move-object/from16 v23, v5

    .end local v5    # "serverIdentifier":Ljava/net/Inet4Address;
    .local v23, "serverIdentifier":Ljava/net/Inet4Address;
    if-nez v2, :cond_2

    .line 791
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v0, 0x116

    if-lt v5, v0, :cond_1

    .line 796
    const/4 v0, 0x6

    new-array v5, v0, [B

    .line 797
    .local v5, "l2dst":[B
    new-array v0, v0, [B

    .line 799
    .local v0, "l2src":[B
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 800
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 802
    move-object/from16 v27, v0

    .end local v0    # "l2src":[B
    .local v27, "l2src":[B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 804
    .local v0, "l2type":S
    move-object/from16 v28, v5

    .end local v5    # "l2dst":[B
    .local v28, "l2dst":[B
    sget v5, Landroid/system/OsConstants;->ETH_P_IP:I

    if-ne v0, v5, :cond_0

    move-object/from16 v29, v6

    move-object/from16 v31, v7

    const/4 v6, 0x1

    goto :goto_0

    .line 805
    :cond_0
    new-instance v5, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    move-object/from16 v29, v6

    .end local v6    # "netMask":Ljava/net/Inet4Address;
    .local v29, "netMask":Ljava/net/Inet4Address;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 806
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v26

    const/16 v24, 0x0

    aput-object v26, v6, v24

    sget v24, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v6, v25

    move/from16 v24, v0

    .end local v0    # "l2type":S
    .local v24, "l2type":S
    const-string v0, "Unexpected L2 type 0x%04x, expected 0x%04x"

    move-object/from16 v31, v7

    const/high16 v7, 0x1020000

    .end local v7    # "message":Ljava/lang/String;
    .local v31, "message":Ljava/lang/String;
    invoke-direct {v5, v7, v0, v6}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 792
    .end local v24    # "l2type":S
    .end local v27    # "l2src":[B
    .end local v28    # "l2dst":[B
    .end local v29    # "netMask":Ljava/net/Inet4Address;
    .end local v31    # "message":Ljava/lang/String;
    .restart local v6    # "netMask":Ljava/net/Inet4Address;
    .restart local v7    # "message":Ljava/lang/String;
    :cond_1
    move-object/from16 v29, v6

    move-object/from16 v31, v7

    .end local v6    # "netMask":Ljava/net/Inet4Address;
    .end local v7    # "message":Ljava/lang/String;
    .restart local v29    # "netMask":Ljava/net/Inet4Address;
    .restart local v31    # "message":Ljava/lang/String;
    new-instance v5, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 793
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v24, 0x0

    aput-object v26, v7, v24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v7, v6

    const-string v0, "L2 packet too short, %d < %d"

    const/high16 v6, 0x1010000

    invoke-direct {v5, v6, v0, v7}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 790
    .end local v29    # "netMask":Ljava/net/Inet4Address;
    .end local v31    # "message":Ljava/lang/String;
    .restart local v6    # "netMask":Ljava/net/Inet4Address;
    .restart local v7    # "message":Ljava/lang/String;
    :cond_2
    move-object/from16 v29, v6

    move-object/from16 v31, v7

    const/4 v6, 0x1

    .line 810
    .end local v6    # "netMask":Ljava/net/Inet4Address;
    .end local v7    # "message":Ljava/lang/String;
    .restart local v29    # "netMask":Ljava/net/Inet4Address;
    .restart local v31    # "message":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x4

    if-gt v2, v6, :cond_9

    .line 811
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x108

    if-lt v5, v6, :cond_8

    .line 816
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 817
    .local v5, "ipTypeAndLength":B
    and-int/lit16 v6, v5, 0xf0

    shr-int/2addr v6, v0

    .line 818
    .local v6, "ipVersion":I
    if-ne v6, v0, :cond_7

    .line 824
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 825
    .local v7, "ipDiffServicesField":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    .line 826
    .local v27, "ipTotalLength":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v28

    .line 827
    .local v28, "ipIdentification":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v30

    .line 828
    .local v30, "ipFlags":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v32

    .line 829
    .local v32, "ipFragOffset":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v33

    .line 830
    .local v33, "ipTTL":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 831
    .local v0, "ipProto":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v35

    .line 833
    .local v35, "ipChksm":S
    invoke-static/range {p0 .. p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v22

    .line 834
    invoke-static/range {p0 .. p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v13

    .line 836
    move/from16 v36, v7

    .end local v7    # "ipDiffServicesField":B
    .local v36, "ipDiffServicesField":B
    const/16 v7, 0x11

    if-ne v0, v7, :cond_6

    .line 844
    and-int/lit8 v7, v5, 0xf

    add-int/lit8 v7, v7, -0x5

    .line 845
    .local v7, "optionWords":I
    const/16 v37, 0x0

    move/from16 v38, v5

    move/from16 v5, v37

    .local v5, "i":I
    .local v38, "ipTypeAndLength":B
    :goto_1
    if-ge v5, v7, :cond_3

    .line 846
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 845
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 850
    .end local v5    # "i":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 851
    .local v5, "udpSrcPort":S
    move/from16 v37, v7

    .end local v7    # "optionWords":I
    .local v37, "optionWords":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 852
    .local v7, "udpDstPort":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v39

    .line 853
    .local v39, "udpLen":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v40

    .line 858
    .local v40, "udpChkSum":S
    invoke-static {v5, v7}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->isPacketToOrFromClient(SS)Z

    move-result v41

    if-nez v41, :cond_5

    .line 859
    invoke-static {v5, v7}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->isPacketServerToServer(SS)Z

    move-result v41

    if-eqz v41, :cond_4

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 864
    :cond_4
    move-object/from16 v41, v8

    .end local v8    # "vendorId":Ljava/lang/String;
    .local v41, "vendorId":Ljava/lang/String;
    new-instance v8, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    move-object/from16 v42, v9

    .end local v9    # "vendorInfo":Ljava/lang/String;
    .local v42, "vendorInfo":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 865
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v26

    const/16 v24, 0x0

    aput-object v26, v9, v24

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v24

    move/from16 v43, v5

    const/4 v5, 0x1

    .end local v5    # "udpSrcPort":S
    .local v43, "udpSrcPort":S
    aput-object v24, v9, v5

    const-string v5, "Unexpected UDP ports %d->%d"

    move/from16 v25, v7

    const/high16 v7, 0x3020000

    .end local v7    # "udpDstPort":S
    .local v25, "udpDstPort":S
    invoke-direct {v8, v7, v5, v9}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v8

    .line 858
    .end local v25    # "udpDstPort":S
    .end local v41    # "vendorId":Ljava/lang/String;
    .end local v42    # "vendorInfo":Ljava/lang/String;
    .end local v43    # "udpSrcPort":S
    .restart local v5    # "udpSrcPort":S
    .restart local v7    # "udpDstPort":S
    .restart local v8    # "vendorId":Ljava/lang/String;
    .restart local v9    # "vendorInfo":Ljava/lang/String;
    :cond_5
    move/from16 v43, v5

    move/from16 v25, v7

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    const/4 v5, 0x1

    .end local v5    # "udpSrcPort":S
    .end local v7    # "udpDstPort":S
    .end local v8    # "vendorId":Ljava/lang/String;
    .end local v9    # "vendorInfo":Ljava/lang/String;
    .restart local v25    # "udpDstPort":S
    .restart local v41    # "vendorId":Ljava/lang/String;
    .restart local v42    # "vendorInfo":Ljava/lang/String;
    .restart local v43    # "udpSrcPort":S
    goto :goto_2

    .line 837
    .end local v25    # "udpDstPort":S
    .end local v37    # "optionWords":I
    .end local v38    # "ipTypeAndLength":B
    .end local v39    # "udpLen":S
    .end local v40    # "udpChkSum":S
    .end local v41    # "vendorId":Ljava/lang/String;
    .end local v42    # "vendorInfo":Ljava/lang/String;
    .end local v43    # "udpSrcPort":S
    .local v5, "ipTypeAndLength":B
    .restart local v8    # "vendorId":Ljava/lang/String;
    .restart local v9    # "vendorInfo":Ljava/lang/String;
    :cond_6
    move/from16 v38, v5

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    const/4 v5, 0x1

    .end local v5    # "ipTypeAndLength":B
    .end local v8    # "vendorId":Ljava/lang/String;
    .end local v9    # "vendorInfo":Ljava/lang/String;
    .restart local v38    # "ipTypeAndLength":B
    .restart local v41    # "vendorId":Ljava/lang/String;
    .restart local v42    # "vendorInfo":Ljava/lang/String;
    new-instance v7, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    const/high16 v8, 0x3010000

    new-array v5, v5, [Ljava/lang/Object;

    .line 838
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const/16 v24, 0x0

    aput-object v9, v5, v24

    const-string v9, "Protocol not UDP: %d"

    invoke-direct {v7, v8, v9, v5}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v7

    .line 819
    .end local v0    # "ipProto":B
    .end local v27    # "ipTotalLength":S
    .end local v28    # "ipIdentification":S
    .end local v30    # "ipFlags":B
    .end local v32    # "ipFragOffset":B
    .end local v33    # "ipTTL":B
    .end local v35    # "ipChksm":S
    .end local v36    # "ipDiffServicesField":B
    .end local v38    # "ipTypeAndLength":B
    .end local v41    # "vendorId":Ljava/lang/String;
    .end local v42    # "vendorInfo":Ljava/lang/String;
    .restart local v5    # "ipTypeAndLength":B
    .restart local v8    # "vendorId":Ljava/lang/String;
    .restart local v9    # "vendorInfo":Ljava/lang/String;
    :cond_7
    move/from16 v38, v5

    move-object/from16 v41, v8

    const/4 v5, 0x1

    const/16 v24, 0x0

    .end local v5    # "ipTypeAndLength":B
    .end local v8    # "vendorId":Ljava/lang/String;
    .restart local v38    # "ipTypeAndLength":B
    .restart local v41    # "vendorId":Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    const/high16 v7, 0x2020000

    new-array v5, v5, [Ljava/lang/Object;

    .line 820
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v24

    const-string v8, "Invalid IP version %d"

    invoke-direct {v0, v7, v8, v5}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 812
    .end local v6    # "ipVersion":I
    .end local v38    # "ipTypeAndLength":B
    .end local v41    # "vendorId":Ljava/lang/String;
    .restart local v8    # "vendorId":Ljava/lang/String;
    :cond_8
    move-object/from16 v41, v8

    const/16 v24, 0x0

    .end local v8    # "vendorId":Ljava/lang/String;
    .restart local v41    # "vendorId":Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    const/high16 v5, 0x2010000

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 813
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v24

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    const-string v6, "L3 packet too short, %d < %d"

    invoke-direct {v0, v5, v6, v7}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 810
    .end local v41    # "vendorId":Ljava/lang/String;
    .restart local v8    # "vendorId":Ljava/lang/String;
    :cond_9
    move-object/from16 v41, v8

    move-object/from16 v42, v9

    .line 870
    .end local v8    # "vendorId":Ljava/lang/String;
    .end local v9    # "vendorInfo":Ljava/lang/String;
    .restart local v41    # "vendorId":Ljava/lang/String;
    .restart local v42    # "vendorInfo":Ljava/lang/String;
    :goto_2
    const/16 v0, 0xec

    const/4 v5, 0x2

    if-gt v2, v5, :cond_15

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v0, :cond_15

    .line 876
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 877
    .local v5, "type":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 878
    .local v6, "hwType":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v7, v0, 0xff

    .line 879
    .local v7, "addrLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 880
    .local v8, "hops":B
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 881
    .local v9, "transactionId":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v27

    .line 882
    .local v27, "secs":S
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v28

    .line 883
    .local v28, "bootpFlags":S
    const v0, 0x8000

    and-int v0, v28, v0

    if-eqz v0, :cond_a

    const/16 v56, 0x1

    goto :goto_3

    :cond_a
    const/16 v56, 0x0

    .line 884
    .local v56, "broadcast":Z
    :goto_3
    const/4 v0, 0x4

    new-array v2, v0, [B

    .line 887
    .local v2, "ipv4addr":[B
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 888
    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v48, v0

    check-cast v48, Ljava/net/Inet4Address;

    .line 889
    .local v48, "clientIp":Ljava/net/Inet4Address;
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 890
    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v49, v0

    check-cast v49, Ljava/net/Inet4Address;

    .line 891
    .local v49, "yourIp":Ljava/net/Inet4Address;
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 892
    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    move-object/from16 v30, v0

    .line 893
    .local v30, "nextIp":Ljava/net/Inet4Address;
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 894
    invoke-static {v2}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v54, v0

    check-cast v54, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_6

    .line 898
    .local v54, "relayIp":Ljava/net/Inet4Address;
    nop

    .line 906
    const/16 v0, 0x10

    if-le v7, v0, :cond_b

    .line 907
    sget-object v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->ETHER_BROADCAST:[B

    array-length v7, v0

    .line 910
    :cond_b
    move/from16 v40, v5

    .end local v5    # "type":B
    .local v40, "type":B
    new-array v5, v7, [B

    .line 911
    .local v5, "clientMac":[B
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 914
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    rsub-int/lit8 v32, v7, 0x10

    add-int v0, v0, v32

    add-int/lit8 v0, v0, 0x40

    add-int/lit16 v0, v0, 0x80

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 919
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move/from16 v57, v6

    const/4 v6, 0x4

    .end local v6    # "hwType":B
    .local v57, "hwType":B
    if-lt v0, v6, :cond_14

    .line 923
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 924
    .local v6, "dhcpMagicCookie":I
    const v0, 0x63825363

    if-ne v6, v0, :cond_13

    .line 931
    const/4 v0, 0x1

    move-object/from16 v61, v2

    move/from16 v62, v6

    move/from16 v58, v7

    move/from16 v59, v8

    move-object v8, v10

    move-object v2, v12

    move-object/from16 v60, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v15, v16

    move-object/from16 v63, v17

    move-object/from16 v12, v18

    move-object/from16 v64, v19

    move-object/from16 v65, v20

    move-object/from16 v18, v29

    move-object/from16 v14, v31

    move-object/from16 v17, v41

    move-object/from16 v16, v42

    move v10, v0

    move-object v13, v11

    move-object/from16 v11, v23

    .line 933
    .end local v19    # "T1":Ljava/lang/Integer;
    .end local v20    # "T2":Ljava/lang/Integer;
    .end local v23    # "serverIdentifier":Ljava/net/Inet4Address;
    .end local v29    # "netMask":Ljava/net/Inet4Address;
    .end local v31    # "message":Ljava/lang/String;
    .end local v41    # "vendorId":Ljava/lang/String;
    .end local v42    # "vendorInfo":Ljava/lang/String;
    .local v2, "domainName":Ljava/lang/String;
    .local v6, "bcAddr":Ljava/net/Inet4Address;
    .local v7, "requestedIp":Ljava/net/Inet4Address;
    .local v8, "expectedParams":[B
    .local v10, "notFinishedOptions":Z
    .local v11, "serverIdentifier":Ljava/net/Inet4Address;
    .local v12, "leaseTime":Ljava/lang/Integer;
    .local v13, "hostName":Ljava/lang/String;
    .local v14, "message":Ljava/lang/String;
    .local v15, "mtu":Ljava/lang/Short;
    .local v16, "vendorInfo":Ljava/lang/String;
    .local v17, "vendorId":Ljava/lang/String;
    .local v18, "netMask":Ljava/net/Inet4Address;
    .local v58, "addrLen":I
    .local v59, "hops":B
    .local v60, "ipDst":Ljava/net/Inet4Address;
    .local v61, "ipv4addr":[B
    .local v62, "dhcpMagicCookie":I
    .local v63, "maxMessageSize":Ljava/lang/Short;
    .local v64, "T1":Ljava/lang/Integer;
    .local v65, "T2":Ljava/lang/Integer;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move-object/from16 v19, v11

    .end local v11    # "serverIdentifier":Ljava/net/Inet4Address;
    .local v19, "serverIdentifier":Ljava/net/Inet4Address;
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    if-ge v0, v11, :cond_12

    if-eqz v10, :cond_12

    .line 934
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .line 936
    .local v11, "optionType":B
    const/4 v0, -0x1

    if-ne v11, v0, :cond_c

    .line 937
    const/4 v0, 0x0

    move v10, v0

    .end local v10    # "notFinishedOptions":Z
    .local v0, "notFinishedOptions":Z
    goto/16 :goto_9

    .line 938
    .end local v0    # "notFinishedOptions":Z
    .restart local v10    # "notFinishedOptions":Z
    :cond_c
    if-nez v11, :cond_d

    goto/16 :goto_9

    .line 941
    :cond_d
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_5

    and-int/lit16 v0, v0, 0xff

    .line 942
    .local v0, "optionLen":I
    const/16 v20, 0x0

    .line 944
    .local v20, "expectedLen":I
    sparse-switch v11, :sswitch_data_0

    .line 1029
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .local v23, "notFinishedOptions":Z
    const/4 v1, 0x0

    .local v1, "i":I
    goto/16 :goto_7

    .line 1018
    .end local v1    # "i":I
    .end local v23    # "notFinishedOptions":Z
    .restart local v10    # "notFinishedOptions":Z
    :sswitch_0
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    :try_start_2
    new-array v10, v0, [B

    .line 1019
    .local v10, "id":[B
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1020
    move v10, v0

    .line 1021
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 1013
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v20    # "expectedLen":I
    :sswitch_1
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    move v10, v0

    .line 1015
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    move/from16 v20, v10

    const/4 v10, 0x1

    .end local v10    # "expectedLen":I
    .restart local v20    # "expectedLen":I
    invoke-static {v1, v0, v10}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v10, v29

    .line 1016
    .end local v17    # "vendorId":Ljava/lang/String;
    .local v10, "vendorId":Ljava/lang/String;
    move-object v1, v7

    move-object/from16 v17, v10

    move-object/from16 v7, v16

    move/from16 v10, v20

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 1009
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v17    # "vendorId":Ljava/lang/String;
    :sswitch_2
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    const/4 v10, 0x4

    .line 1010
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v65, v20

    .line 1011
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 1005
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v20    # "expectedLen":I
    :sswitch_3
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    const/4 v10, 0x4

    .line 1006
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v64, v20

    .line 1007
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 1001
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v20    # "expectedLen":I
    :sswitch_4
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    const/4 v10, 0x2

    .line 1002
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v20

    move-object/from16 v63, v20

    .line 1003
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 997
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v20    # "expectedLen":I
    :sswitch_5
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    move v10, v0

    .line 998
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    move/from16 v20, v10

    const/4 v10, 0x0

    .end local v10    # "expectedLen":I
    .restart local v20    # "expectedLen":I
    invoke-static {v1, v0, v10}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v14, v29

    .line 999
    move-object v1, v7

    move-object/from16 v7, v16

    move/from16 v10, v20

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 992
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    :sswitch_6
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    new-array v10, v0, [B

    move-object v8, v10

    .line 993
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 994
    move v10, v0

    .line 995
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 988
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v20    # "expectedLen":I
    :sswitch_7
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    invoke-static/range {p0 .. p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v10

    .line 989
    .end local v19    # "serverIdentifier":Ljava/net/Inet4Address;
    .local v10, "serverIdentifier":Ljava/net/Inet4Address;
    const/16 v19, 0x4

    .line 990
    .end local v20    # "expectedLen":I
    .local v19, "expectedLen":I
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    move/from16 v66, v19

    move-object/from16 v19, v10

    move/from16 v10, v66

    goto/16 :goto_8

    .line 984
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .local v19, "serverIdentifier":Ljava/net/Inet4Address;
    .restart local v20    # "expectedLen":I
    :sswitch_8
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    move/from16 v21, v10

    .line 985
    const/4 v10, 0x1

    .line 986
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 980
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v20    # "expectedLen":I
    :sswitch_9
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v12, v10

    .line 981
    const/4 v10, 0x4

    .line 982
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 976
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v20    # "expectedLen":I
    :sswitch_a
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    invoke-static/range {p0 .. p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v10

    move-object v7, v10

    .line 977
    const/4 v10, 0x4

    .line 978
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 1023
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v20    # "expectedLen":I
    :sswitch_b
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    move v10, v0

    .line 1025
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    move/from16 v20, v10

    const/4 v10, 0x1

    .end local v10    # "expectedLen":I
    .restart local v20    # "expectedLen":I
    invoke-static {v1, v0, v10}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v10, v29

    .line 1026
    .end local v16    # "vendorInfo":Ljava/lang/String;
    .local v10, "vendorInfo":Ljava/lang/String;
    move-object v1, v7

    move-object v7, v10

    move-object/from16 v16, v15

    move/from16 v10, v20

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 972
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v16    # "vendorInfo":Ljava/lang/String;
    :sswitch_c
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    invoke-static/range {p0 .. p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v10

    move-object v6, v10

    .line 973
    const/4 v10, 0x4

    .line 974
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 964
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v20    # "expectedLen":I
    :sswitch_d
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    const/4 v10, 0x2

    .line 965
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v20

    move-object/from16 v15, v20

    .line 966
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 968
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v20    # "expectedLen":I
    :sswitch_e
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    move v10, v0

    .line 969
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    move/from16 v20, v10

    const/4 v10, 0x0

    .end local v10    # "expectedLen":I
    .restart local v20    # "expectedLen":I
    invoke-static {v1, v0, v10}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v2, v24

    .line 970
    move-object v1, v7

    move-object/from16 v7, v16

    move/from16 v10, v20

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 960
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    :sswitch_f
    move/from16 v23, v10

    const/4 v10, 0x0

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    move/from16 v20, v0

    .line 961
    invoke-static {v1, v0, v10}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v13, v29

    .line 962
    move-object v1, v7

    move-object/from16 v7, v16

    move/from16 v10, v20

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto/16 :goto_8

    .line 955
    .end local v23    # "notFinishedOptions":Z
    .restart local v10    # "notFinishedOptions":Z
    :sswitch_10
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    const/4 v10, 0x0

    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    :goto_5
    if-ge v10, v0, :cond_e

    .line 956
    invoke-static/range {p0 .. p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    add-int/lit8 v10, v10, 0x4

    move-object/from16 v1, p0

    goto :goto_5

    :cond_e
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto :goto_8

    .line 950
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v20    # "expectedLen":I
    :sswitch_11
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    const/4 v1, 0x0

    move v10, v1

    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    :goto_6
    if-ge v10, v0, :cond_f

    .line 951
    invoke-static/range {p0 .. p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    add-int/lit8 v10, v10, 0x4

    goto :goto_6

    :cond_f
    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    goto :goto_8

    .line 946
    .end local v23    # "notFinishedOptions":Z
    .local v10, "notFinishedOptions":Z
    .restart local v20    # "expectedLen":I
    :sswitch_12
    move/from16 v23, v10

    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    invoke-static/range {p0 .. p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;

    move-result-object v1

    .line 947
    .end local v18    # "netMask":Ljava/net/Inet4Address;
    .local v1, "netMask":Ljava/net/Inet4Address;
    const/4 v10, 0x4

    .line 948
    .end local v20    # "expectedLen":I
    .local v10, "expectedLen":I
    move-object/from16 v66, v12

    move-object v12, v1

    move-object v1, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object/from16 v13, v66

    goto :goto_8

    .line 1043
    .end local v0    # "optionLen":I
    .end local v1    # "netMask":Ljava/net/Inet4Address;
    .end local v10    # "expectedLen":I
    .restart local v18    # "netMask":Ljava/net/Inet4Address;
    :catch_0
    move-exception v0

    goto/16 :goto_a

    .line 1029
    .restart local v0    # "optionLen":I
    .local v1, "i":I
    .restart local v20    # "expectedLen":I
    :goto_7
    if-ge v1, v0, :cond_10

    .line 1030
    add-int/lit8 v20, v20, 0x1

    .line 1031
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1029
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_10
    move-object v1, v7

    move-object/from16 v7, v16

    move/from16 v10, v20

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v18

    .line 1035
    .end local v18    # "netMask":Ljava/net/Inet4Address;
    .end local v20    # "expectedLen":I
    .local v1, "requestedIp":Ljava/net/Inet4Address;
    .local v7, "vendorInfo":Ljava/lang/String;
    .restart local v10    # "expectedLen":I
    .local v12, "netMask":Ljava/net/Inet4Address;
    .local v13, "leaseTime":Ljava/lang/Integer;
    .local v14, "hostName":Ljava/lang/String;
    .local v15, "message":Ljava/lang/String;
    .local v16, "mtu":Ljava/lang/Short;
    :goto_8
    if-ne v10, v0, :cond_11

    move-object/from16 v18, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move/from16 v10, v23

    move-object/from16 v16, v7

    move-object v7, v1

    .line 1047
    .end local v0    # "optionLen":I
    .end local v1    # "requestedIp":Ljava/net/Inet4Address;
    .end local v23    # "notFinishedOptions":Z
    .local v7, "requestedIp":Ljava/net/Inet4Address;
    .local v10, "notFinishedOptions":Z
    .local v12, "leaseTime":Ljava/lang/Integer;
    .local v13, "hostName":Ljava/lang/String;
    .local v14, "message":Ljava/lang/String;
    .local v15, "mtu":Ljava/lang/Short;
    .local v16, "vendorInfo":Ljava/lang/String;
    .restart local v18    # "netMask":Ljava/net/Inet4Address;
    :goto_9
    nop

    .line 1048
    .end local v11    # "optionType":B
    move-object/from16 v1, p0

    move-object/from16 v11, v19

    goto/16 :goto_4

    .line 1036
    .end local v18    # "netMask":Ljava/net/Inet4Address;
    .restart local v0    # "optionLen":I
    .restart local v1    # "requestedIp":Ljava/net/Inet4Address;
    .local v7, "vendorInfo":Ljava/lang/String;
    .local v10, "expectedLen":I
    .restart local v11    # "optionType":B
    .local v12, "netMask":Ljava/net/Inet4Address;
    .local v13, "leaseTime":Ljava/lang/Integer;
    .local v14, "hostName":Ljava/lang/String;
    .local v15, "message":Ljava/lang/String;
    .local v16, "mtu":Ljava/lang/Short;
    .restart local v23    # "notFinishedOptions":Z
    :cond_11
    move-object/from16 v18, v1

    .end local v1    # "requestedIp":Ljava/net/Inet4Address;
    .local v18, "requestedIp":Ljava/net/Inet4Address;
    const/high16 v1, 0x4030000

    :try_start_3
    invoke-static {v1, v11}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v1
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1038
    .local v1, "errorCode":I
    move-object/from16 v20, v2

    .end local v2    # "domainName":Ljava/lang/String;
    .local v20, "domainName":Ljava/lang/String;
    :try_start_4
    new-instance v2, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;
    :try_end_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v29, v6

    .end local v6    # "bcAddr":Ljava/net/Inet4Address;
    .local v29, "bcAddr":Ljava/net/Inet4Address;
    :try_start_5
    const-string v6, "Invalid length %d for option %d, expected %d"
    :try_end_5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v31, v7

    .end local v7    # "vendorInfo":Ljava/lang/String;
    .local v31, "vendorInfo":Ljava/lang/String;
    const/4 v7, 0x3

    :try_start_6
    new-array v7, v7, [Ljava/lang/Object;

    .line 1040
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v24, 0x0

    aput-object v32, v7, v24

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v32

    const/16 v25, 0x1

    aput-object v32, v7, v25

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x2

    aput-object v25, v7, v26

    invoke-direct {v2, v1, v6, v7}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v4    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v5    # "clientMac":[B
    .end local v8    # "expectedParams":[B
    .end local v9    # "transactionId":I
    .end local v11    # "optionType":B
    .end local v12    # "netMask":Ljava/net/Inet4Address;
    .end local v13    # "leaseTime":Ljava/lang/Integer;
    .end local v14    # "hostName":Ljava/lang/String;
    .end local v15    # "message":Ljava/lang/String;
    .end local v16    # "mtu":Ljava/lang/Short;
    .end local v17    # "vendorId":Ljava/lang/String;
    .end local v18    # "requestedIp":Ljava/net/Inet4Address;
    .end local v19    # "serverIdentifier":Ljava/net/Inet4Address;
    .end local v20    # "domainName":Ljava/lang/String;
    .end local v21    # "dhcpType":B
    .end local v22    # "ipSrc":Ljava/net/Inet4Address;
    .end local v23    # "notFinishedOptions":Z
    .end local v27    # "secs":S
    .end local v28    # "bootpFlags":S
    .end local v29    # "bcAddr":Ljava/net/Inet4Address;
    .end local v30    # "nextIp":Ljava/net/Inet4Address;
    .end local v31    # "vendorInfo":Ljava/lang/String;
    .end local v40    # "type":B
    .end local v48    # "clientIp":Ljava/net/Inet4Address;
    .end local v49    # "yourIp":Ljava/net/Inet4Address;
    .end local v54    # "relayIp":Ljava/net/Inet4Address;
    .end local v56    # "broadcast":Z
    .end local v57    # "hwType":B
    .end local v58    # "addrLen":I
    .end local v59    # "hops":B
    .end local v60    # "ipDst":Ljava/net/Inet4Address;
    .end local v61    # "ipv4addr":[B
    .end local v62    # "dhcpMagicCookie":I
    .end local v63    # "maxMessageSize":Ljava/lang/Short;
    .end local v64    # "T1":Ljava/lang/Integer;
    .end local v65    # "T2":Ljava/lang/Integer;
    .end local p0    # "packet":Ljava/nio/ByteBuffer;
    .end local p1    # "pktType":I
    throw v2
    :try_end_6
    .catch Ljava/nio/BufferUnderflowException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1043
    .end local v0    # "optionLen":I
    .end local v1    # "errorCode":I
    .end local v10    # "expectedLen":I
    .restart local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v4    # "gateways":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v5    # "clientMac":[B
    .restart local v8    # "expectedParams":[B
    .restart local v9    # "transactionId":I
    .restart local v11    # "optionType":B
    .restart local v12    # "netMask":Ljava/net/Inet4Address;
    .restart local v13    # "leaseTime":Ljava/lang/Integer;
    .restart local v14    # "hostName":Ljava/lang/String;
    .restart local v15    # "message":Ljava/lang/String;
    .restart local v16    # "mtu":Ljava/lang/Short;
    .restart local v17    # "vendorId":Ljava/lang/String;
    .restart local v18    # "requestedIp":Ljava/net/Inet4Address;
    .restart local v19    # "serverIdentifier":Ljava/net/Inet4Address;
    .restart local v20    # "domainName":Ljava/lang/String;
    .restart local v21    # "dhcpType":B
    .restart local v22    # "ipSrc":Ljava/net/Inet4Address;
    .restart local v23    # "notFinishedOptions":Z
    .restart local v27    # "secs":S
    .restart local v28    # "bootpFlags":S
    .restart local v29    # "bcAddr":Ljava/net/Inet4Address;
    .restart local v30    # "nextIp":Ljava/net/Inet4Address;
    .restart local v31    # "vendorInfo":Ljava/lang/String;
    .restart local v40    # "type":B
    .restart local v48    # "clientIp":Ljava/net/Inet4Address;
    .restart local v49    # "yourIp":Ljava/net/Inet4Address;
    .restart local v54    # "relayIp":Ljava/net/Inet4Address;
    .restart local v56    # "broadcast":Z
    .restart local v57    # "hwType":B
    .restart local v58    # "addrLen":I
    .restart local v59    # "hops":B
    .restart local v60    # "ipDst":Ljava/net/Inet4Address;
    .restart local v61    # "ipv4addr":[B
    .restart local v62    # "dhcpMagicCookie":I
    .restart local v63    # "maxMessageSize":Ljava/lang/Short;
    .restart local v64    # "T1":Ljava/lang/Integer;
    .restart local v65    # "T2":Ljava/lang/Integer;
    .restart local p0    # "packet":Ljava/nio/ByteBuffer;
    .restart local p1    # "pktType":I
    :catch_1
    move-exception v0

    move-object/from16 v7, v18

    move-object/from16 v2, v20

    move-object/from16 v6, v29

    move-object/from16 v18, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v31

    goto :goto_a

    .end local v31    # "vendorInfo":Ljava/lang/String;
    .restart local v7    # "vendorInfo":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v7, v18

    move-object/from16 v2, v20

    move-object/from16 v6, v29

    move-object/from16 v18, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v31

    .end local v7    # "vendorInfo":Ljava/lang/String;
    .restart local v31    # "vendorInfo":Ljava/lang/String;
    goto :goto_a

    .end local v29    # "bcAddr":Ljava/net/Inet4Address;
    .end local v31    # "vendorInfo":Ljava/lang/String;
    .restart local v6    # "bcAddr":Ljava/net/Inet4Address;
    .restart local v7    # "vendorInfo":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v29, v6

    move-object/from16 v31, v7

    move-object/from16 v7, v18

    move-object/from16 v2, v20

    move-object/from16 v18, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v31

    .end local v6    # "bcAddr":Ljava/net/Inet4Address;
    .end local v7    # "vendorInfo":Ljava/lang/String;
    .restart local v29    # "bcAddr":Ljava/net/Inet4Address;
    .restart local v31    # "vendorInfo":Ljava/lang/String;
    goto :goto_a

    .end local v20    # "domainName":Ljava/lang/String;
    .end local v29    # "bcAddr":Ljava/net/Inet4Address;
    .end local v31    # "vendorInfo":Ljava/lang/String;
    .restart local v2    # "domainName":Ljava/lang/String;
    .restart local v6    # "bcAddr":Ljava/net/Inet4Address;
    .restart local v7    # "vendorInfo":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v20, v2

    move-object/from16 v29, v6

    move-object/from16 v31, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v31

    .end local v2    # "domainName":Ljava/lang/String;
    .end local v6    # "bcAddr":Ljava/net/Inet4Address;
    .end local v7    # "vendorInfo":Ljava/lang/String;
    .restart local v20    # "domainName":Ljava/lang/String;
    .restart local v29    # "bcAddr":Ljava/net/Inet4Address;
    .restart local v31    # "vendorInfo":Ljava/lang/String;
    goto :goto_a

    .end local v20    # "domainName":Ljava/lang/String;
    .end local v23    # "notFinishedOptions":Z
    .end local v29    # "bcAddr":Ljava/net/Inet4Address;
    .end local v31    # "vendorInfo":Ljava/lang/String;
    .restart local v2    # "domainName":Ljava/lang/String;
    .restart local v6    # "bcAddr":Ljava/net/Inet4Address;
    .local v7, "requestedIp":Ljava/net/Inet4Address;
    .local v10, "notFinishedOptions":Z
    .local v12, "leaseTime":Ljava/lang/Integer;
    .local v13, "hostName":Ljava/lang/String;
    .local v14, "message":Ljava/lang/String;
    .local v15, "mtu":Ljava/lang/Short;
    .local v16, "vendorInfo":Ljava/lang/String;
    .local v18, "netMask":Ljava/net/Inet4Address;
    :catch_5
    move-exception v0

    move/from16 v23, v10

    .line 1044
    .end local v10    # "notFinishedOptions":Z
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    .restart local v23    # "notFinishedOptions":Z
    :goto_a
    const/high16 v1, 0x5010000

    invoke-static {v1, v11}, Landroid/net/metrics/DhcpErrorEvent;->errorCodeWithOption(II)I

    move-result v1

    .line 1046
    .restart local v1    # "errorCode":I
    new-instance v10, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2    # "domainName":Ljava/lang/String;
    .restart local v20    # "domainName":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v24, v0

    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .local v24, "e":Ljava/nio/BufferUnderflowException;
    const-string v0, "BufferUnderflowException"

    invoke-direct {v10, v1, v0, v2}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v10

    .line 933
    .end local v1    # "errorCode":I
    .end local v11    # "optionType":B
    .end local v20    # "domainName":Ljava/lang/String;
    .end local v23    # "notFinishedOptions":Z
    .end local v24    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "domainName":Ljava/lang/String;
    .restart local v10    # "notFinishedOptions":Z
    :cond_12
    move/from16 v23, v10

    .line 1052
    .end local v10    # "notFinishedOptions":Z
    .restart local v23    # "notFinishedOptions":Z
    sparse-switch v21, :sswitch_data_1

    .line 1089
    move-object/from16 v24, v2

    move-object/from16 v32, v3

    const/4 v1, 0x0

    .end local v2    # "domainName":Ljava/lang/String;
    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local v24, "domainName":Ljava/lang/String;
    .local v32, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    new-instance v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    const/high16 v2, 0x4050000

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1090
    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v3, v1

    const-string v1, "Unimplemented DHCP type %d"

    invoke-direct {v0, v2, v1, v3}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1065
    .end local v24    # "domainName":Ljava/lang/String;
    .end local v32    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v2    # "domainName":Ljava/lang/String;
    .restart local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    :sswitch_13
    new-instance v0, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;

    move-object/from16 v51, v0

    move/from16 v52, v9

    move/from16 v53, v27

    move-object/from16 v55, v5

    invoke-direct/range {v51 .. v56}, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;-><init>(ISLjava/net/Inet4Address;[BZ)V

    .line 1067
    .local v0, "newPacket":Landroid/net/wifi/oplus/util/OplusDhcpPacket;
    goto :goto_b

    .line 1057
    .end local v0    # "newPacket":Landroid/net/wifi/oplus/util/OplusDhcpPacket;
    :sswitch_14
    new-instance v0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;

    move-object/from16 v43, v0

    move/from16 v44, v9

    move/from16 v45, v27

    move/from16 v46, v56

    move-object/from16 v47, v22

    move-object/from16 v50, v5

    invoke-direct/range {v43 .. v50}, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1059
    .restart local v0    # "newPacket":Landroid/net/wifi/oplus/util/OplusDhcpPacket;
    goto :goto_b

    .line 1061
    .end local v0    # "newPacket":Landroid/net/wifi/oplus/util/OplusDhcpPacket;
    :sswitch_15
    new-instance v0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;

    move-object/from16 v32, v0

    move/from16 v33, v9

    move/from16 v34, v27

    move/from16 v35, v56

    move-object/from16 v36, v22

    move-object/from16 v37, v48

    move-object/from16 v38, v49

    move-object/from16 v39, v5

    invoke-direct/range {v32 .. v39}, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;-><init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V

    .line 1063
    .restart local v0    # "newPacket":Landroid/net/wifi/oplus/util/OplusDhcpPacket;
    nop

    .line 1093
    :goto_b
    iput-object v6, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    .line 1094
    iput-object v3, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mDnsServers:Ljava/util/List;

    .line 1095
    iput-object v2, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mDomainName:Ljava/lang/String;

    .line 1096
    iput-object v4, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mGateways:Ljava/util/List;

    .line 1097
    iput-object v13, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mHostName:Ljava/lang/String;

    .line 1098
    iput-object v12, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 1099
    iput-object v14, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mMessage:Ljava/lang/String;

    .line 1100
    iput-object v15, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mMtu:Ljava/lang/Short;

    .line 1101
    iput-object v7, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mRequestedIp:Ljava/net/Inet4Address;

    .line 1102
    iput-object v8, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mRequestedParams:[B

    .line 1103
    move-object/from16 v1, v19

    .end local v19    # "serverIdentifier":Ljava/net/Inet4Address;
    .local v1, "serverIdentifier":Ljava/net/Inet4Address;
    iput-object v1, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1104
    move-object/from16 v10, v18

    .end local v18    # "netMask":Ljava/net/Inet4Address;
    .local v10, "netMask":Ljava/net/Inet4Address;
    iput-object v10, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    .line 1105
    move-object/from16 v11, v63

    .end local v63    # "maxMessageSize":Ljava/lang/Short;
    .local v11, "maxMessageSize":Ljava/lang/Short;
    iput-object v11, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mMaxMessageSize:Ljava/lang/Short;

    .line 1106
    move-object/from16 v1, v64

    .end local v64    # "T1":Ljava/lang/Integer;
    .local v1, "T1":Ljava/lang/Integer;
    .restart local v19    # "serverIdentifier":Ljava/net/Inet4Address;
    iput-object v1, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mT1:Ljava/lang/Integer;

    .line 1107
    move-object/from16 v18, v1

    move-object/from16 v1, v65

    .end local v65    # "T2":Ljava/lang/Integer;
    .local v1, "T2":Ljava/lang/Integer;
    .local v18, "T1":Ljava/lang/Integer;
    iput-object v1, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mT2:Ljava/lang/Integer;

    .line 1108
    move-object/from16 v20, v1

    move-object/from16 v1, v17

    .end local v17    # "vendorId":Ljava/lang/String;
    .local v1, "vendorId":Ljava/lang/String;
    .local v20, "T2":Ljava/lang/Integer;
    iput-object v1, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mVendorId:Ljava/lang/String;

    .line 1109
    move-object/from16 v1, v16

    .end local v16    # "vendorInfo":Ljava/lang/String;
    .local v1, "vendorInfo":Ljava/lang/String;
    .restart local v17    # "vendorId":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mVendorInfo:Ljava/lang/String;

    .line 1110
    return-object v0

    .line 1054
    .end local v0    # "newPacket":Landroid/net/wifi/oplus/util/OplusDhcpPacket;
    .end local v1    # "vendorInfo":Ljava/lang/String;
    .end local v10    # "netMask":Ljava/net/Inet4Address;
    .end local v11    # "maxMessageSize":Ljava/lang/Short;
    .end local v20    # "T2":Ljava/lang/Integer;
    .restart local v16    # "vendorInfo":Ljava/lang/String;
    .local v18, "netMask":Ljava/net/Inet4Address;
    .restart local v63    # "maxMessageSize":Ljava/lang/Short;
    .restart local v64    # "T1":Ljava/lang/Integer;
    .restart local v65    # "T2":Ljava/lang/Integer;
    :sswitch_16
    new-instance v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v24, v2

    .end local v2    # "domainName":Ljava/lang/String;
    .restart local v24    # "domainName":Ljava/lang/String;
    const-string v2, "No DHCP message type option"

    move-object/from16 v32, v3

    const/high16 v3, 0x4040000

    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v32    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    invoke-direct {v0, v3, v2, v1}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 925
    .end local v24    # "domainName":Ljava/lang/String;
    .end local v32    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v58    # "addrLen":I
    .end local v59    # "hops":B
    .end local v60    # "ipDst":Ljava/net/Inet4Address;
    .end local v61    # "ipv4addr":[B
    .end local v62    # "dhcpMagicCookie":I
    .end local v63    # "maxMessageSize":Ljava/lang/Short;
    .end local v64    # "T1":Ljava/lang/Integer;
    .end local v65    # "T2":Ljava/lang/Integer;
    .local v2, "ipv4addr":[B
    .restart local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local v6, "dhcpMagicCookie":I
    .local v7, "addrLen":I
    .local v8, "hops":B
    .local v10, "expectedParams":[B
    .local v11, "hostName":Ljava/lang/String;
    .local v12, "domainName":Ljava/lang/String;
    .local v13, "ipDst":Ljava/net/Inet4Address;
    .local v14, "bcAddr":Ljava/net/Inet4Address;
    .local v15, "requestedIp":Ljava/net/Inet4Address;
    .local v16, "mtu":Ljava/lang/Short;
    .local v17, "maxMessageSize":Ljava/lang/Short;
    .local v18, "leaseTime":Ljava/lang/Integer;
    .local v19, "T1":Ljava/lang/Integer;
    .restart local v20    # "T2":Ljava/lang/Integer;
    .local v23, "serverIdentifier":Ljava/net/Inet4Address;
    .local v29, "netMask":Ljava/net/Inet4Address;
    .local v31, "message":Ljava/lang/String;
    .restart local v41    # "vendorId":Ljava/lang/String;
    .restart local v42    # "vendorInfo":Ljava/lang/String;
    :cond_13
    move-object/from16 v61, v2

    move-object/from16 v32, v3

    move/from16 v62, v6

    move/from16 v58, v7

    const/4 v1, 0x0

    .end local v2    # "ipv4addr":[B
    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v6    # "dhcpMagicCookie":I
    .end local v7    # "addrLen":I
    .restart local v32    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v58    # "addrLen":I
    .restart local v61    # "ipv4addr":[B
    .restart local v62    # "dhcpMagicCookie":I
    new-instance v2, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    const/high16 v3, 0x4020000

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 927
    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    const-string v0, "Bad magic cookie 0x%08x, should be 0x%08x"

    invoke-direct {v2, v3, v0, v6}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 920
    .end local v32    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v58    # "addrLen":I
    .end local v61    # "ipv4addr":[B
    .end local v62    # "dhcpMagicCookie":I
    .restart local v2    # "ipv4addr":[B
    .restart local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v7    # "addrLen":I
    :cond_14
    move-object/from16 v61, v2

    move-object/from16 v32, v3

    const/4 v1, 0x0

    .end local v2    # "ipv4addr":[B
    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v32    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v61    # "ipv4addr":[B
    new-instance v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    const/high16 v2, 0x4060000

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "not a DHCP message"

    invoke-direct {v0, v2, v3, v1}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 895
    .end local v30    # "nextIp":Ljava/net/Inet4Address;
    .end local v32    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v40    # "type":B
    .end local v48    # "clientIp":Ljava/net/Inet4Address;
    .end local v49    # "yourIp":Ljava/net/Inet4Address;
    .end local v54    # "relayIp":Ljava/net/Inet4Address;
    .end local v57    # "hwType":B
    .end local v61    # "ipv4addr":[B
    .restart local v2    # "ipv4addr":[B
    .restart local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .local v5, "type":B
    .local v6, "hwType":B
    :catch_6
    move-exception v0

    move-object/from16 v61, v2

    move-object/from16 v32, v3

    move/from16 v40, v5

    move/from16 v57, v6

    move/from16 v59, v8

    move-object/from16 v60, v13

    .line 896
    .end local v2    # "ipv4addr":[B
    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v5    # "type":B
    .end local v6    # "hwType":B
    .end local v8    # "hops":B
    .end local v13    # "ipDst":Ljava/net/Inet4Address;
    .local v0, "ex":Ljava/net/UnknownHostException;
    .restart local v32    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v40    # "type":B
    .restart local v57    # "hwType":B
    .restart local v59    # "hops":B
    .restart local v60    # "ipDst":Ljava/net/Inet4Address;
    .restart local v61    # "ipv4addr":[B
    new-instance v1, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    const/high16 v2, 0x2030000

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 897
    invoke-static/range {v61 .. v61}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string v5, "Invalid IPv4 address: %s"

    invoke-direct {v1, v2, v5, v3}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 870
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    .end local v7    # "addrLen":I
    .end local v9    # "transactionId":I
    .end local v27    # "secs":S
    .end local v28    # "bootpFlags":S
    .end local v32    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v40    # "type":B
    .end local v56    # "broadcast":Z
    .end local v57    # "hwType":B
    .end local v59    # "hops":B
    .end local v60    # "ipDst":Ljava/net/Inet4Address;
    .end local v61    # "ipv4addr":[B
    .restart local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v13    # "ipDst":Ljava/net/Inet4Address;
    :cond_15
    move-object/from16 v32, v3

    move-object/from16 v60, v13

    .line 871
    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .end local v13    # "ipDst":Ljava/net/Inet4Address;
    .restart local v32    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    .restart local v60    # "ipDst":Ljava/net/Inet4Address;
    new-instance v1, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    const/high16 v2, 0x4010000

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 873
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v0, "Invalid type or BOOTP packet too short, %d < %d"

    invoke-direct {v1, v2, v0, v3}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_12
        0x3 -> :sswitch_11
        0x6 -> :sswitch_10
        0xc -> :sswitch_f
        0xf -> :sswitch_e
        0x1a -> :sswitch_d
        0x1c -> :sswitch_c
        0x2b -> :sswitch_b
        0x32 -> :sswitch_a
        0x33 -> :sswitch_9
        0x35 -> :sswitch_8
        0x36 -> :sswitch_7
        0x37 -> :sswitch_6
        0x38 -> :sswitch_5
        0x39 -> :sswitch_4
        0x3a -> :sswitch_3
        0x3b -> :sswitch_2
        0x3c -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_16
        0x2 -> :sswitch_15
        0x5 -> :sswitch_14
        0x6 -> :sswitch_13
    .end sparse-switch
.end method

.method public static blacklist decodeFullPacket([BII)Landroid/net/wifi/oplus/util/OplusDhcpPacket;
    .locals 6
    .param p0, "packet"    # [B
    .param p1, "length"    # I
    .param p2, "pktType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;
        }
    .end annotation

    .line 1118
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1120
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {v1, p2}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->decodeFullPacket(Ljava/nio/ByteBuffer;I)Landroid/net/wifi/oplus/util/OplusDhcpPacket;

    move-result-object v0
    :try_end_0
    .catch Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1123
    :catch_0
    move-exception v2

    .line 1124
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;

    const/high16 v4, 0x5030000

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5, v0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 1121
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1122
    .local v0, "e":Landroid/net/wifi/oplus/util/OplusDhcpPacket$ParseException;
    throw v0
.end method

.method private blacklist getHostname()Ljava/lang/String;
    .locals 1

    .line 638
    sget-object v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->testOverrideHostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 639
    :cond_0
    const-string v0, "net.hostname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getVendorId()Ljava/lang/String;
    .locals 2

    .line 633
    sget-object v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->testOverrideVendorId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 634
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-dhcp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist intAbs(S)I
    .locals 1
    .param p0, "v"    # S

    .line 492
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static blacklist isPacketServerToServer(SS)Z
    .locals 1
    .param p0, "udpSrcPort"    # S
    .param p1, "udpDstPort"    # S

    .line 728
    const/16 v0, 0x43

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isPacketToOrFromClient(SS)Z
    .locals 1
    .param p0, "udpSrcPort"    # S
    .param p1, "udpDstPort"    # S

    .line 724
    const/16 v0, 0x44

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static whitelist macToString([B)Ljava/lang/String;
    .locals 5
    .param p0, "mac"    # [B

    .line 659
    const-string v0, ""

    .line 661
    .local v0, "macAddr":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, "hexString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    .end local v2    # "hexString":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static blacklist readAsciiString(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "byteCount"    # I
    .param p2, "nullOk"    # Z

    .line 706
    new-array v0, p1, [B

    .line 707
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 708
    array-length v1, v0

    .line 709
    .local v1, "length":I
    if-nez p2, :cond_1

    .line 714
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 715
    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    .line 716
    goto :goto_1

    .line 714
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method private static blacklist readIpAddress(Ljava/nio/ByteBuffer;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "packet"    # Ljava/nio/ByteBuffer;

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "result":Ljava/net/Inet4Address;
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 689
    .local v1, "ipAddr":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 692
    :try_start_0
    invoke-static {v1}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 697
    goto :goto_0

    .line 693
    :catch_0
    move-exception v2

    .line 696
    .local v2, "ex":Ljava/net/UnknownHostException;
    const/4 v0, 0x0

    .line 699
    .end local v2    # "ex":Ljava/net/UnknownHostException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected blacklist addCommonClientTlvs(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 649
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {p1, v1, v0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Short;)V

    .line 650
    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->getVendorId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {p1, v1, v0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 651
    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->getHostname()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "hn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-static {p1, v1, v0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 653
    :cond_0
    return-void
.end method

.method public abstract blacklist buildPacket(ISS)Ljava/nio/ByteBuffer;
.end method

.method protected blacklist fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V
    .locals 17
    .param p1, "encap"    # I
    .param p2, "destIp"    # Ljava/net/Inet4Address;
    .param p3, "srcIp"    # Ljava/net/Inet4Address;
    .param p4, "destUdp"    # S
    .param p5, "srcUdp"    # S
    .param p6, "buf"    # Ljava/nio/ByteBuffer;
    .param p7, "requestCode"    # B
    .param p8, "broadcast"    # Z

    .line 375
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual/range {p2 .. p2}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v3

    .line 376
    .local v3, "destIpArray":[B
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v4

    .line 377
    .local v4, "srcIpArray":[B
    const/4 v5, 0x0

    .line 378
    .local v5, "ipHeaderOffset":I
    const/4 v6, 0x0

    .line 379
    .local v6, "ipLengthOffset":I
    const/4 v7, 0x0

    .line 380
    .local v7, "ipChecksumOffset":I
    const/4 v8, 0x0

    .line 381
    .local v8, "endIpHeader":I
    const/4 v9, 0x0

    .line 382
    .local v9, "udpHeaderOffset":I
    const/4 v10, 0x0

    .line 383
    .local v10, "udpLengthOffset":I
    const/4 v11, 0x0

    .line 385
    .local v11, "udpChecksumOffset":I
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 386
    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 388
    if-nez v1, :cond_0

    .line 389
    sget-object v12, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->ETHER_BROADCAST:[B

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 390
    iget-object v12, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mClientMac:[B

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 391
    sget v12, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v12, v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 397
    :cond_0
    const/16 v13, 0x40

    const/16 v14, 0x10

    const/4 v15, 0x1

    const/4 v12, 0x0

    if-gt v1, v15, :cond_1

    .line 398
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 399
    const/16 v15, 0x45

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 400
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 401
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 402
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 403
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 404
    const/16 v15, 0x4000

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 405
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 406
    const/16 v15, 0x11

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 408
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 410
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 411
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 412
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 415
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 416
    move/from16 v15, p5

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 417
    move/from16 v13, p4

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 418
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 419
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 420
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    .line 421
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 397
    :cond_1
    move/from16 v13, p4

    move/from16 v15, p5

    .line 425
    :goto_0
    invoke-virtual/range {p6 .. p7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 426
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 427
    iget-object v14, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mClientMac:[B

    array-length v14, v14

    int-to-byte v14, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 428
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 429
    iget v14, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mTransId:I

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 430
    iget-short v14, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mSecs:S

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 432
    if-eqz p8, :cond_2

    .line 433
    const/16 v14, -0x8000

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 435
    :cond_2
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 438
    :goto_1
    iget-object v14, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    invoke-virtual {v14}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 439
    iget-object v14, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v14}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 440
    iget-object v14, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mNextIp:Ljava/net/Inet4Address;

    invoke-virtual {v14}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 441
    iget-object v14, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mRelayIp:Ljava/net/Inet4Address;

    invoke-virtual {v14}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 442
    iget-object v14, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mClientMac:[B

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 443
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    iget-object v12, v0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mClientMac:[B

    array-length v12, v12

    const/16 v16, 0x10

    rsub-int/lit8 v12, v12, 0x10

    add-int/2addr v14, v12

    const/16 v12, 0x40

    add-int/2addr v14, v12

    add-int/lit16 v14, v14, 0x80

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 447
    const v12, 0x63825363

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 448
    invoke-virtual {v0, v2}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->finishPacket(Ljava/nio/ByteBuffer;)V

    .line 451
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    const/4 v14, 0x1

    and-int/2addr v12, v14

    if-ne v12, v14, :cond_3

    .line 452
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 457
    :cond_3
    if-gt v1, v14, :cond_4

    .line 459
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    sub-int/2addr v12, v9

    int-to-short v12, v12

    .line 460
    .local v12, "udpLen":S
    invoke-virtual {v2, v10, v12}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 463
    const/4 v14, 0x0

    .line 467
    .local v14, "udpSeed":I
    add-int/lit8 v1, v7, 0x2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->intAbs(S)I

    move-result v1

    add-int/2addr v14, v1

    .line 468
    add-int/lit8 v1, v7, 0x4

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->intAbs(S)I

    move-result v1

    add-int/2addr v14, v1

    .line 469
    add-int/lit8 v1, v7, 0x6

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->intAbs(S)I

    move-result v1

    add-int/2addr v14, v1

    .line 470
    add-int/lit8 v1, v7, 0x8

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->intAbs(S)I

    move-result v1

    add-int/2addr v14, v1

    .line 473
    const/16 v1, 0x11

    add-int/2addr v14, v1

    .line 474
    add-int/2addr v14, v12

    .line 476
    nop

    .line 478
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 476
    invoke-direct {v0, v2, v14, v9, v1}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v11, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 480
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v5

    int-to-short v1, v1

    invoke-virtual {v2, v6, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 482
    nop

    .line 483
    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v5, v8}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->checksum(Ljava/nio/ByteBuffer;III)I

    move-result v1

    int-to-short v1, v1

    .line 482
    invoke-virtual {v2, v7, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 485
    .end local v12    # "udpLen":S
    .end local v14    # "udpSeed":I
    :cond_4
    return-void
.end method

.method abstract blacklist finishPacket(Ljava/nio/ByteBuffer;)V
.end method

.method public whitelist getClientId()[B
    .locals 5

    .line 361
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mClientMac:[B

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 362
    .local v1, "clientId":[B
    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 363
    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    return-object v1
.end method

.method public whitelist getClientMac()[B
    .locals 1

    .line 354
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mClientMac:[B

    return-object v0
.end method

.method public whitelist getLeaseTimeMillis()J
    .locals 4

    .line 1179
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1181
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    .line 1182
    const-wide/32 v0, 0xea60

    return-wide v0

    .line 1184
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 1180
    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTransactionId()I
    .locals 1

    .line 347
    iget v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mTransId:I

    return v0
.end method

.method public whitelist toDhcpResults()Landroid/net/DhcpResults;
    .locals 6

    .line 1132
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    .line 1133
    .local v0, "ipAddress":Ljava/net/Inet4Address;
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1134
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    .line 1135
    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1136
    return-object v2

    .line 1141
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    if-eqz v1, :cond_1

    .line 1143
    :try_start_0
    invoke-static {v1}, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->netmaskToPrefixLength(Ljava/net/Inet4Address;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    .local v1, "prefixLength":I
    goto :goto_0

    .line 1144
    .end local v1    # "prefixLength":I
    :catch_0
    move-exception v1

    .line 1146
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v2

    .line 1149
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-static {v0}, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->getImplicitNetmask(Ljava/net/Inet4Address;)I

    move-result v1

    .line 1152
    .local v1, "prefixLength":I
    :goto_0
    new-instance v3, Landroid/net/DhcpResults;

    invoke-direct {v3}, Landroid/net/DhcpResults;-><init>()V

    .line 1154
    .local v3, "results":Landroid/net/DhcpResults;
    :try_start_1
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, v3, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1157
    nop

    .line 1159
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mGateways:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_2

    .line 1160
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mGateways:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iput-object v2, v3, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    .line 1163
    :cond_2
    iget-object v2, v3, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mDnsServers:Ljava/util/List;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1164
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mDomainName:Ljava/lang/String;

    iput-object v2, v3, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    .line 1165
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    iput-object v2, v3, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 1166
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mVendorInfo:Ljava/lang/String;

    iput-object v2, v3, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 1167
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    iput v2, v3, Landroid/net/DhcpResults;->leaseDuration:I

    .line 1168
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mMtu:Ljava/lang/Short;

    if-eqz v2, :cond_4

    const/16 v5, 0x500

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-gt v5, v2, :cond_4

    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    const/16 v5, 0x5dc

    if-gt v2, v5, :cond_4

    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mMtu:Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v4

    :cond_4
    iput v4, v3, Landroid/net/DhcpResults;->mtu:I

    .line 1171
    return-object v3

    .line 1155
    :catch_1
    move-exception v4

    .line 1156
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 677
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->mClientMac:[B

    invoke-static {v0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->macToString([B)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "macAddr":Ljava/lang/String;
    return-object v0
.end method
