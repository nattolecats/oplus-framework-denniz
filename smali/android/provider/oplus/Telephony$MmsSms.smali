.class public final Landroid/provider/oplus/Telephony$MmsSms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/oplus/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/oplus/Telephony$MmsSms$WordsTable;,
        Landroid/provider/oplus/Telephony$MmsSms$PendingMessages;
    }
.end annotation


# static fields
.field public static final blacklist CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_DRAFT_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_LOCKED_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist ERR_TYPE_GENERIC:I = 0x1

.field public static final blacklist ERR_TYPE_GENERIC_PERMANENT:I = 0xa

.field public static final blacklist ERR_TYPE_MMS_PROTO_PERMANENT:I = 0xc

.field public static final blacklist ERR_TYPE_MMS_PROTO_TRANSIENT:I = 0x3

.field public static final blacklist ERR_TYPE_SMS_PROTO_PERMANENT:I = 0xb

.field public static final blacklist ERR_TYPE_SMS_PROTO_TRANSIENT:I = 0x2

.field public static final blacklist ERR_TYPE_TRANSPORT_FAILURE:I = 0x4

.field public static final blacklist MMS_PROTO:I = 0x1

.field public static final blacklist NO_ERROR:I = 0x0

.field public static final blacklist SEARCH_URI:Landroid/net/Uri;

.field public static final blacklist SMS_PROTO:I = 0x0

.field public static final blacklist TYPE_DISCRIMINATOR_COLUMN:Ljava/lang/String; = "transport_type"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2409
    const-string v0, "content://mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oplus/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    .line 2414
    const-string v0, "content://mms-sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oplus/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    .line 2420
    const-string v0, "content://mms-sms/messages/byphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oplus/Telephony$MmsSms;->CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri;

    .line 2426
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oplus/Telephony$MmsSms;->CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

    .line 2432
    const-string v0, "content://mms-sms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oplus/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    .line 2438
    const-string v0, "content://mms-sms/locked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oplus/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 2445
    const-string v0, "content://mms-sms/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oplus/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 2397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2398
    return-void
.end method
