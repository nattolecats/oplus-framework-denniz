.class public Lcom/oplus/wrapper/content/Intent;
.super Ljava/lang/Object;
.source "Intent.java"


# static fields
.field public static final whitelist FLAG_RECEIVER_INCLUDE_BACKGROUND:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lcom/oplus/wrapper/content/Intent;->getFlagReceiverIncludeBackground()I

    move-result v0

    sput v0, Lcom/oplus/wrapper/content/Intent;->FLAG_RECEIVER_INCLUDE_BACKGROUND:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getFlagReceiverIncludeBackground()I
    .locals 1

    .line 41
    const/high16 v0, 0x1000000

    return v0
.end method
