.class public Landroid/telephony/OplusTelephonyFunction;
.super Ljava/lang/Object;
.source "OplusTelephonyFunction.java"


# static fields
.field public static final blacklist CONCATENATED_8_BIT_REFERENCE_LENGTH:I = 0x5

.field private static final blacklist DBG:Z = false

.field public static final blacklist PORT_ADDRESS_16_REFERENCE_LENGTH:I = 0x6

.field private static blacklist PROJECT_MULTISIM_CONFIG:Ljava/lang/String; = null

.field private static final blacklist TAG:Ljava/lang/String; = "OplusTelephonyFunction"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 42
    const-string v0, "persist.radio.multisim.config"

    const-string v1, "unknow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/OplusTelephonyFunction;->PROJECT_MULTISIM_CONFIG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist countGsmSeptets(Ljava/lang/CharSequence;ZI)I
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "throwsException"    # Z
    .param p2, "rfu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "charIndex":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 112
    .local v1, "sz":I
    const/4 v2, 0x0

    .line 114
    .local v2, "count":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 115
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return v2
.end method

.method public static blacklist createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .line 90
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 91
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 92
    return-object v0
.end method

.method public static blacklist divideDataMessage([B)[[B
    .locals 10
    .param p0, "data"    # [B

    .line 53
    array-length v0, p0

    .line 55
    .local v0, "dataLen":I
    const/16 v1, 0x85

    .line 58
    .local v1, "bytePreSeg":I
    if-le v0, v1, :cond_0

    .line 59
    add-int/lit8 v1, v1, -0x5

    .line 62
    :cond_0
    add-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v1

    .line 63
    .local v2, "total":I
    move v3, v0

    .line 64
    .local v3, "remainLen":I
    const/4 v4, 0x0

    .line 65
    .local v4, "count":I
    new-array v5, v2, [[B

    .line 67
    .local v5, "dataSegList":[[B
    :goto_0
    if-lez v3, :cond_2

    .line 70
    if-le v3, v1, :cond_1

    .line 71
    move v6, v1

    .local v6, "copyLen":I
    goto :goto_1

    .line 73
    .end local v6    # "copyLen":I
    :cond_1
    move v6, v3

    .line 76
    .restart local v6    # "copyLen":I
    :goto_1
    sub-int/2addr v3, v6

    .line 78
    new-array v7, v6, [B

    aput-object v7, v5, v4

    .line 80
    mul-int v7, v4, v1

    aget-object v8, v5, v4

    const/4 v9, 0x0

    invoke-static {p0, v7, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    nop

    .end local v6    # "copyLen":I
    add-int/lit8 v4, v4, 0x1

    .line 83
    goto :goto_0

    .line 85
    :cond_2
    return-object v5
.end method

.method public static blacklist dmAutoRegisterSmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .line 178
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 181
    if-nez v0, :cond_0

    .line 183
    const/4 p0, 0x0

    goto :goto_0

    .line 188
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    .line 190
    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 195
    .end local v0    # "index":I
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static blacklist dmAutoRegisterSmsOrigPort(Ljava/lang/String;)I
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "origPort":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 166
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    .line 168
    add-int/lit8 v2, v1, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 170
    goto :goto_0

    .line 169
    :catch_0
    move-exception v2

    .line 173
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return v0
.end method

.method public static blacklist getMinMatch()I
    .locals 2

    .line 96
    const-string v0, "persist.sys.oplus.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "region":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    :goto_0
    return v1
.end method

.method private static blacklist isOpenMarketSingleSimCard()Z
    .locals 1

    .line 228
    invoke-static {}, Landroid/telephony/OplusTelephonyFunction;->isOperatorSingleSimCard()Z

    move-result v0

    return v0
.end method

.method private static blacklist isOperatorSingleSimCard()Z
    .locals 2

    .line 235
    sget-object v0, Landroid/telephony/OplusTelephonyFunction;->PROJECT_MULTISIM_CONFIG:Ljava/lang/String;

    const-string v1, "ssss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/telephony/OplusTelephonyFunction;->PROJECT_MULTISIM_CONFIG:Ljava/lang/String;

    const-string v1, "ss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 236
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist oplusGetPlmnOverride(Landroid/content/Context;Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "operatorNumic"    # Ljava/lang/String;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 200
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 201
    const-string v1, "OplusTelephonyFunction"

    const-string v2, "oplusGetPlmnOverride context == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-object v0

    .line 204
    :cond_0
    const/4 v1, 0x0

    .line 205
    .local v1, "plmn":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mccmnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "com.android.phone"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_1

    .line 208
    return-object v1

    .line 211
    :cond_1
    if-nez p2, :cond_2

    .line 212
    return-object v0

    .line 214
    :cond_2
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist oplusGetSingleSimCard()Z
    .locals 1

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "singleSimCard":Z
    invoke-static {}, Landroid/telephony/OplusTelephonyFunction;->isOpenMarketSingleSimCard()Z

    move-result v0

    .line 221
    if-nez v0, :cond_0

    .line 222
    invoke-static {}, Landroid/telephony/OplusTelephonyFunction;->isOperatorSingleSimCard()Z

    move-result v0

    .line 224
    :cond_0
    return v0
.end method

.method public static blacklist oplusIsSimLockedEnabledTH()Z
    .locals 1

    .line 246
    invoke-static {}, Landroid/telephony/OplusTelephonyFunction;->isOperatorSingleSimCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist stringToGsm8BitOrUCSPackedForADN(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 134
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2, v2}, Landroid/telephony/OplusTelephonyFunction;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v3

    .line 136
    .local v3, "septets":I
    new-array v4, v3, [B

    .line 138
    .local v4, "ret":[B
    array-length v5, v4

    invoke-static {p0, v4, v1, v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 140
    .end local v3    # "septets":I
    .end local v4    # "ret":[B
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v4, "utf-16be"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 146
    .local v4, "temp":[B
    array-length v5, v4

    add-int/2addr v5, v2

    new-array v5, v5, [B

    .line 148
    .local v5, "ret":[B
    const/16 v6, -0x80

    aput-byte v6, v5, v1

    .line 150
    array-length v6, v4

    invoke-static {v4, v1, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    move-object v4, v5

    .line 157
    .end local v3    # "e":Lcom/android/internal/telephony/EncodeException;
    .end local v5    # "ret":[B
    .local v4, "ret":[B
    :goto_0
    return-object v4

    .line 152
    .end local v4    # "ret":[B
    .restart local v3    # "e":Lcom/android/internal/telephony/EncodeException;
    :catch_1
    move-exception v1

    .line 153
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v2, "OplusTelephonyFunction"

    const-string v4, "unsurport encoding."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    return-object v0
.end method
