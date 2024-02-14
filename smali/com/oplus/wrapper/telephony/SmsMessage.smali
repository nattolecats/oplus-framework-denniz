.class public Lcom/oplus/wrapper/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# instance fields
.field private final blacklist mSmsMessage:Landroid/telephony/SmsMessage;


# direct methods
.method public constructor whitelist <init>(Landroid/telephony/SmsMessage;)V
    .locals 0
    .param p1, "smsMessage"    # Landroid/telephony/SmsMessage;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/oplus/wrapper/telephony/SmsMessage;->mSmsMessage:Landroid/telephony/SmsMessage;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist getSubId()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/oplus/wrapper/telephony/SmsMessage;->mSmsMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getSubId()I

    move-result v0

    return v0
.end method

.method public whitelist isWrappedSmsMessageNull()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/oplus/wrapper/telephony/SmsMessage;->mSmsMessage:Landroid/telephony/SmsMessage;

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist setSubId(I)V
    .locals 1
    .param p1, "subId"    # I

    .line 54
    iget-object v0, p0, Lcom/oplus/wrapper/telephony/SmsMessage;->mSmsMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v0, p1}, Landroid/telephony/SmsMessage;->setSubId(I)V

    .line 55
    return-void
.end method
