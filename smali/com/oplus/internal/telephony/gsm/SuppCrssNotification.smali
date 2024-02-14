.class public Lcom/oplus/internal/telephony/gsm/SuppCrssNotification;
.super Ljava/lang/Object;
.source "SuppCrssNotification.java"


# static fields
.field public static final blacklist CRSS_CALLED_LINE_ID_PREST:I = 0x1

.field public static final blacklist CRSS_CALLING_LINE_ID_PREST:I = 0x2

.field public static final blacklist CRSS_CALL_WAITING:I = 0x0

.field public static final blacklist CRSS_CONNECTED_LINE_ID_PREST:I = 0x3

.field public static final blacklist SDBG:Z


# instance fields
.field public blacklist alphaid:Ljava/lang/String;

.field public blacklist cli_validity:I

.field public blacklist code:I

.field public blacklist number:Ljava/lang/String;

.field public blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 36
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/oplus/internal/telephony/gsm/SuppCrssNotification;->SDBG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CRSS Notification: code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/internal/telephony/gsm/SuppCrssNotification;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/oplus/internal/telephony/gsm/SuppCrssNotification;->SDBG:Z

    iget-object v2, p0, Lcom/oplus/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    iget v3, p0, Lcom/oplus/internal/telephony/gsm/SuppCrssNotification;->type:I

    .line 66
    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/internal/telephony/gsm/SuppCrssNotification;->alphaid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cli_validity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/internal/telephony/gsm/SuppCrssNotification;->cli_validity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method
