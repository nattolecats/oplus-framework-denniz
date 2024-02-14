.class public final Landroid/provider/oplus/Telephony$ScrapSpace;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/oplus/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScrapSpace"
.end annotation


# static fields
.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist SCRAP_FILE_PATH:Ljava/lang/String; = "/sdcard/mms/scrapSpace/.temp.jpg"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 3321
    const-string v0, "content://mms/scrapSpace"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/oplus/Telephony$ScrapSpace;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 3317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
