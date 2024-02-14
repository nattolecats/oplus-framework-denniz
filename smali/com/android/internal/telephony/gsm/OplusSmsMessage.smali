.class public Lcom/android/internal/telephony/gsm/OplusSmsMessage;
.super Ljava/lang/Object;
.source "OplusSmsMessage.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "gsm-OplusSmsMessage"

.field private static final blacklist NUMBER_0x04:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateLengthOem(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "use7bitOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",encodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gsm-OplusSmsMessage"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "newMsgBody":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 55
    .local v2, "r":Landroid/content/res/Resources;
    if-nez p1, :cond_0

    const v3, 0x11101bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    move-object v0, p0

    .line 62
    :cond_2
    invoke-static {v0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    .line 65
    .local v3, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    .line 66
    const-string v4, "input mode is unicode"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v3, 0x0

    .line 71
    :cond_3
    if-nez v3, :cond_4

    .line 72
    const-string v4, "7-bit encoding fail"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {v0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    return-object v1

    .line 75
    :cond_4
    return-object v3
.end method

.method public static blacklist oemGetSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 14
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .line 88
    move-object/from16 v1, p3

    const-string v2, "gsm-OplusSmsMessage"

    const-string v3, "0"

    const-string v4, "persist.sys.oplus.radio.ct_auto_ims"

    const/4 v5, 0x0

    .line 90
    .local v5, "isCtIms":Z
    :try_start_0
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v5, v0

    .line 91
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

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    if-nez v5, :cond_0

    .line 96
    return-object v0

    .line 109
    :cond_0
    array-length v6, v1

    const/16 v7, 0x8c

    if-le v6, v7, :cond_1

    .line 110
    const-string v3, "SMS data message may only contain 140 bytes"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v0

    .line 115
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 120
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

    aput-object p0, v6, v9

    aput-object p1, v6, v10

    .line 124
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v11

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v12

    aput-object v2, v6, v13

    .line 120
    const-string v8, "com.android.internal.telephony.gsm.SmsMessage"

    const-string v10, "getSubmitPduHead"

    invoke-static {v0, v8, v10, v7, v6}, Lcom/android/internal/telephony/util/ReflectionHelper;->callDeclaredMethodOrThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 125
    .local v6, "obj":Ljava/lang/Object;
    if-eqz v6, :cond_2

    move-object v0, v6

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    :cond_2
    move-object v7, v0

    .line 129
    .local v7, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez v7, :cond_3

    return-object v2

    .line 133
    :cond_3
    invoke-virtual {v7, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 138
    array-length v0, v1

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 145
    array-length v0, v1

    invoke-virtual {v7, v1, v9, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 147
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 150
    :try_start_1
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    goto :goto_1

    .line 151
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 152
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v2
.end method
