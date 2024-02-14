.class public final Landroid/provider/oplus/Telephony$Mms$Part;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/oplus/Telephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# static fields
.field public static final blacklist CHARSET:Ljava/lang/String; = "chset"

.field public static final blacklist CONTENT_DISPOSITION:Ljava/lang/String; = "cd"

.field public static final blacklist CONTENT_ID:Ljava/lang/String; = "cid"

.field public static final blacklist CONTENT_LOCATION:Ljava/lang/String; = "cl"

.field public static final blacklist CONTENT_TYPE:Ljava/lang/String; = "ct"

.field public static final blacklist CT_START:Ljava/lang/String; = "ctt_s"

.field public static final blacklist CT_TYPE:Ljava/lang/String; = "ctt_t"

.field public static final blacklist FILENAME:Ljava/lang/String; = "fn"

.field public static final blacklist MSG_ID:Ljava/lang/String; = "mid"

.field public static final blacklist NAME:Ljava/lang/String; = "name"

.field public static final blacklist SEQ:Ljava/lang/String; = "seq"

.field public static final blacklist TEXT:Ljava/lang/String; = "text"

.field public static final blacklist _DATA:Ljava/lang/String; = "_data"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 2253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2254
    return-void
.end method
