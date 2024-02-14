.class public Landroid/net/wifi/oplus/util/OplusIcmpPacket;
.super Ljava/lang/Object;
.source "OplusIcmpPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/oplus/util/OplusIcmpPacket$ParseException;
    }
.end annotation


# static fields
.field private static final blacklist ICMP_CODE_INDEX:I = 0x1

.field private static final blacklist ICMP_HEAD_LEN:I = 0x8

.field private static final blacklist ICMP_MTU_INDEX:I = 0x6

.field private static final blacklist ICMP_TYPE_INDEX:I = 0x0

.field private static final blacklist IP_DST_ADDR_INDEX:I = 0x10

.field private static final blacklist IP_HEAD_INDEX:I = 0x0

.field private static final blacklist IP_PROTO_INDEX:I = 0x9

.field private static final blacklist IP_SRC_ADDR_INDEX:I = 0xc

.field private static final blacklist IP_V4:I = 0x4

.field private static final blacklist IP_V4_LEN_MIN:I = 0x14

.field private static final blacklist PROTO_ICMP:I = 0x1

.field protected static final whitelist TAG:Ljava/lang/String; = "OplusIcmpPacket"


# instance fields
.field public whitelist mCode:I

.field public whitelist mDataDstAddr:Ljava/net/InetAddress;

.field public whitelist mDataProto:I

.field public whitelist mDataSrcAddr:Ljava/net/InetAddress;

.field public whitelist mErrDstAddr:Ljava/net/InetAddress;

.field public whitelist mErrSrcAddr:Ljava/net/InetAddress;

.field public whitelist mMtuNextHop:I

.field public whitelist mType:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mType:I

    .line 58
    iput v0, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mCode:I

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrSrcAddr:Ljava/net/InetAddress;

    .line 61
    iput-object v1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrDstAddr:Ljava/net/InetAddress;

    .line 63
    iput v0, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mMtuNextHop:I

    .line 65
    iput-object v1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataSrcAddr:Ljava/net/InetAddress;

    .line 66
    iput-object v1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataDstAddr:Ljava/net/InetAddress;

    .line 67
    iput v0, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataProto:I

    return-void
.end method

.method static blacklist decodeIcmpPacket(Ljava/nio/ByteBuffer;I)Landroid/net/wifi/oplus/util/OplusIcmpPacket;
    .locals 16
    .param p0, "packet"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/oplus/util/OplusIcmpPacket$ParseException;
        }
    .end annotation

    .line 116
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-gtz p1, :cond_0

    goto/16 :goto_1

    .line 120
    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 122
    const/4 v2, -0x1

    .line 123
    .local v2, "type":I
    const/4 v3, -0x1

    .line 125
    .local v3, "code":I
    const/4 v4, 0x0

    .line 126
    .local v4, "errSrcAddr":Ljava/net/InetAddress;
    const/4 v5, 0x0

    .line 127
    .local v5, "errDstAddr":Ljava/net/InetAddress;
    const/4 v6, -0x1

    .line 129
    .local v6, "mtuNextHop":I
    const/4 v7, 0x0

    .line 130
    .local v7, "dataSrcAddr":Ljava/net/InetAddress;
    const/4 v8, 0x0

    .line 131
    .local v8, "dataDstAddr":Ljava/net/InetAddress;
    const/4 v9, -0x1

    .line 134
    .local v9, "dataProto":I
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    .line 135
    .local v10, "ipVerAndLen":B
    and-int/lit16 v11, v10, 0xf0

    const/4 v12, 0x4

    shr-int/2addr v11, v12

    .line 136
    .local v11, "ipVer":I
    and-int/lit8 v13, v10, 0xf

    mul-int/2addr v13, v12

    .line 137
    .local v13, "ipLen":I
    const/16 v14, 0x9

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    .line 141
    .local v15, "ipProto":I
    if-ne v11, v12, :cond_4

    const/16 v14, 0x14

    if-lt v13, v14, :cond_4

    const/4 v14, 0x1

    if-eq v15, v14, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    const/16 v14, 0xc

    invoke-static {v0, v14}, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->getInetAddrFromIcmpByteBuf(Ljava/nio/ByteBuffer;I)Ljava/net/InetAddress;

    move-result-object v4

    .line 149
    const/16 v14, 0x10

    invoke-static {v0, v14}, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->getInetAddrFromIcmpByteBuf(Ljava/nio/ByteBuffer;I)Ljava/net/InetAddress;

    move-result-object v5

    .line 152
    add-int/lit8 v14, v13, 0x0

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 153
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 156
    const/4 v14, 0x3

    if-eq v2, v14, :cond_2

    .line 158
    return-object v1

    .line 162
    :cond_2
    if-ne v2, v14, :cond_3

    if-ne v3, v12, :cond_3

    .line 163
    add-int/lit8 v1, v13, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    .line 167
    :cond_3
    add-int/lit8 v1, v13, 0x8

    const/16 v12, 0xc

    add-int/2addr v1, v12

    invoke-static {v0, v1}, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->getInetAddrFromIcmpByteBuf(Ljava/nio/ByteBuffer;I)Ljava/net/InetAddress;

    move-result-object v1

    .line 168
    .end local v7    # "dataSrcAddr":Ljava/net/InetAddress;
    .local v1, "dataSrcAddr":Ljava/net/InetAddress;
    add-int/lit8 v7, v13, 0x8

    const/16 v12, 0x10

    add-int/2addr v7, v12

    invoke-static {v0, v7}, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->getInetAddrFromIcmpByteBuf(Ljava/nio/ByteBuffer;I)Ljava/net/InetAddress;

    move-result-object v7

    .line 169
    .end local v8    # "dataDstAddr":Ljava/net/InetAddress;
    .local v7, "dataDstAddr":Ljava/net/InetAddress;
    add-int/lit8 v8, v13, 0x8

    const/16 v12, 0x9

    add-int/2addr v8, v12

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    .line 171
    .end local v9    # "dataProto":I
    .local v8, "dataProto":I
    new-instance v9, Landroid/net/wifi/oplus/util/OplusIcmpPacket;

    invoke-direct {v9}, Landroid/net/wifi/oplus/util/OplusIcmpPacket;-><init>()V

    .line 172
    .local v9, "newPacket":Landroid/net/wifi/oplus/util/OplusIcmpPacket;
    iput v2, v9, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mType:I

    .line 173
    iput v3, v9, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mCode:I

    .line 174
    iput-object v4, v9, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrSrcAddr:Ljava/net/InetAddress;

    .line 175
    iput-object v5, v9, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrDstAddr:Ljava/net/InetAddress;

    .line 176
    iput v6, v9, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mMtuNextHop:I

    .line 177
    iput-object v1, v9, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataSrcAddr:Ljava/net/InetAddress;

    .line 178
    iput-object v7, v9, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataDstAddr:Ljava/net/InetAddress;

    .line 179
    iput v8, v9, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataProto:I

    .line 181
    return-object v9

    .line 142
    .end local v1    # "dataSrcAddr":Ljava/net/InetAddress;
    .local v7, "dataSrcAddr":Ljava/net/InetAddress;
    .local v8, "dataDstAddr":Ljava/net/InetAddress;
    .local v9, "dataProto":I
    :cond_4
    :goto_0
    return-object v1

    .line 117
    .end local v2    # "type":I
    .end local v3    # "code":I
    .end local v4    # "errSrcAddr":Ljava/net/InetAddress;
    .end local v5    # "errDstAddr":Ljava/net/InetAddress;
    .end local v6    # "mtuNextHop":I
    .end local v7    # "dataSrcAddr":Ljava/net/InetAddress;
    .end local v8    # "dataDstAddr":Ljava/net/InetAddress;
    .end local v9    # "dataProto":I
    .end local v10    # "ipVerAndLen":B
    .end local v11    # "ipVer":I
    .end local v13    # "ipLen":I
    .end local v15    # "ipProto":I
    :cond_5
    :goto_1
    return-object v1
.end method

.method public static whitelist decodeIcmpPacket([BI)Landroid/net/wifi/oplus/util/OplusIcmpPacket;
    .locals 2
    .param p0, "packet"    # [B
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/wifi/oplus/util/OplusIcmpPacket$ParseException;
        }
    .end annotation

    .line 190
    if-eqz p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {v0, p1}, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->decodeIcmpPacket(Ljava/nio/ByteBuffer;I)Landroid/net/wifi/oplus/util/OplusIcmpPacket;

    move-result-object v1
    :try_end_0
    .catch Landroid/net/wifi/oplus/util/OplusIcmpPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    throw v1

    .line 198
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 199
    .local v1, "e":Landroid/net/wifi/oplus/util/OplusIcmpPacket$ParseException;
    throw v1

    .line 191
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "e":Landroid/net/wifi/oplus/util/OplusIcmpPacket$ParseException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getInetAddrFromIcmpByteBuf(Ljava/nio/ByteBuffer;I)Ljava/net/InetAddress;
    .locals 5
    .param p0, "packet"    # Ljava/nio/ByteBuffer;
    .param p1, "addrIndex"    # I

    .line 93
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 94
    return-object v0

    .line 97
    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 99
    .local v2, "addrArray":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 100
    add-int v4, p1, v3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    aput-byte v4, v2, v3

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v3    # "i":I
    :cond_1
    const/4 v1, 0x0

    .line 106
    .local v1, "inetAddr":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "inetAddr":Ljava/net/InetAddress;
    .local v0, "inetAddr":Ljava/net/InetAddress;
    nop

    .line 111
    return-object v0

    .line 107
    .end local v0    # "inetAddr":Ljava/net/InetAddress;
    .restart local v1    # "inetAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v3

    .line 108
    .local v3, "e":Ljava/lang/Exception;
    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrSrcAddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrDstAddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataSrcAddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataDstAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Icmp Info: mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mErrSrcAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrSrcAddr:Ljava/net/InetAddress;

    .line 76
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mErrDstAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrDstAddr:Ljava/net/InetAddress;

    .line 77
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMtuNextHop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mMtuNextHop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDataSrcAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataSrcAddr:Ljava/net/InetAddress;

    .line 79
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDataDstAddr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataDstAddr:Ljava/net/InetAddress;

    .line 80
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDataProto = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataProto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    return-object v0

    .line 71
    :cond_1
    :goto_0
    const-string v0, "params Err, some params = null"

    return-object v0
.end method
