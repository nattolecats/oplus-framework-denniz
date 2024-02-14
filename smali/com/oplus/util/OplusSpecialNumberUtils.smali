.class public Lcom/oplus/util/OplusSpecialNumberUtils;
.super Ljava/lang/Object;
.source "OplusSpecialNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/util/OplusSpecialNumberUtils$OplusSpecialNumColumns;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist SPECIAL_NUMBER_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SpecialNumberTable:Ljava/lang/String; = "special_contacts"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 37
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "special_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/util/OplusSpecialNumberUtils;->SPECIAL_NUMBER_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OplusSpecialNumberUtils is deprecated, no longer supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getImageOfnumber()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OplusSpecialNumberUtils is deprecated, no longer supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInputStreamImageOfnumber()Ljava/io/InputStream;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OplusSpecialNumberUtils is deprecated, no longer supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getNameOfnumber()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OplusSpecialNumberUtils is deprecated, no longer supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isNumberStoredInContacts(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OplusSpecialNumberUtils is deprecated, no longer supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isSpecialNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OplusSpecialNumberUtils is deprecated, no longer supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist numberNeedSpecialHandle(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OplusSpecialNumberUtils is deprecated, no longer supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
