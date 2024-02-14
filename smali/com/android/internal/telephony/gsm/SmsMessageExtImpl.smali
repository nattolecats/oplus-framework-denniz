.class public Lcom/android/internal/telephony/gsm/SmsMessageExtImpl;
.super Ljava/lang/Object;
.source "SmsMessageExtImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/ISmsMessageExt;


# static fields
.field private static final blacklist NUMBER_0x04:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "SmsMessageExtImpl"

.field private static final blacklist amlPrefix:Ljava/lang/String; = "415193d9"

.field private static final blacklist amlPrefixLength:I = 0x5


# instance fields
.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessageExtImpl;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 53
    const-string v0, "SmsMessageExtImpl"

    const-string v1, "SmsMessageExtImpl new"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist getUserDataOem8bit([B[BII)Ljava/lang/String;
    .locals 6
    .param p1, "mUserData"    # [B
    .param p2, "mPdu"    # [B
    .param p3, "mCur"    # I
    .param p4, "byteCount"    # I

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "ret":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 129
    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 130
    .local v1, "decoderUtf8":Ljava/nio/charset/CharsetDecoder;
    array-length v2, p1

    .line 131
    .local v2, "len":I
    new-array v3, v2, [B

    .line 132
    .local v3, "userDataUtf8":[B
    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 134
    .local v4, "byteBufferUtf8":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 144
    .end local v1    # "decoderUtf8":Ljava/nio/charset/CharsetDecoder;
    .end local v2    # "len":I
    .end local v3    # "userDataUtf8":[B
    .end local v4    # "byteBufferUtf8":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e1":Ljava/lang/Exception;
    const-string v2, "SmsMessageExtImpl"

    const-string v3, "UTF_8 parse error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_1
    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 143
    goto :goto_0

    .line 141
    :catch_1
    move-exception v3

    .line 142
    .local v3, "e2":Ljava/lang/Exception;
    const-string v4, "GSM_8 parse error"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v3    # "e2":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public blacklist isAmlDataMessage([B)Ljava/lang/Boolean;
    .locals 10
    .param p1, "data"    # [B

    .line 161
    const-string v0, "SmsMessageExtImpl"

    const-string v1, ""

    .line 163
    .local v1, "userText":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 164
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_1

    .line 169
    const-string v7, "%02x"

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v2

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 171
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 173
    const-string v4, "415193d9"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    const-string v4, " is Aml Data "

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 177
    :cond_2
    const-string v4, " is not Aml Data "

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 180
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 181
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message decode error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v3    # "ex":Ljava/lang/Exception;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isEnable8BitMtSms()Z
    .locals 1

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist oemGetSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 14
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .line 64
    move-object/from16 v1, p4

    const-string v2, "SmsMessageExtImpl"

    const-string v3, "0"

    const-string v4, "persist.sys.oplus.radio.ct_auto_ims"

    const/4 v5, 0x0

    .line 66
    .local v5, "isCtIms":Z
    :try_start_0
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v5, v0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCtIms="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    if-nez v5, :cond_0

    .line 72
    return-object v0

    .line 76
    :cond_0
    array-length v6, v1

    const/16 v7, 0x8c

    if-le v6, v7, :cond_1

    .line 77
    const-string v3, "SMS data message may only contain 140 bytes"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v0

    .line 82
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 83
    .local v2, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v8, v7, v11

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x3

    aput-object v8, v7, v12

    const-class v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    const/4 v13, 0x4

    aput-object v8, v7, v13

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v9

    aput-object p2, v6, v10

    .line 87
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v11

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v12

    aput-object v2, v6, v13

    .line 83
    const-string v8, "com.android.internal.telephony.gsm.SmsMessage"

    const-string v10, "getSubmitPduHead"

    invoke-static {v0, v8, v10, v7, v6}, Lcom/android/internal/telephony/util/ReflectionHelper;->callDeclaredMethodOrThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 88
    .local v6, "obj":Ljava/lang/Object;
    if-eqz v6, :cond_2

    move-object v0, v6

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    :cond_2
    move-object v7, v0

    .line 92
    .local v7, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v7, :cond_3

    return-object v2

    .line 96
    :cond_3
    invoke-virtual {v7, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 101
    array-length v0, v1

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 108
    array-length v0, v1

    invoke-virtual {v7, v1, v9, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 110
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 113
    :try_start_1
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    goto :goto_1

    .line 114
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 115
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v2
.end method
