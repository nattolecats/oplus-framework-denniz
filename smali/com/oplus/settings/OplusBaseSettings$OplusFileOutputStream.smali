.class Lcom/oplus/settings/OplusBaseSettings$OplusFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "OplusBaseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/settings/OplusBaseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OplusFileOutputStream"
.end annotation


# instance fields
.field private blacklist callCount:I

.field private final blacklist contentResolver:Landroid/content/ContentResolver;

.field private final blacklist uri:Landroid/net/Uri;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/settings/OplusBaseSettings$OplusFileOutputStream;->callCount:I

    .line 214
    iput-object p2, p0, Lcom/oplus/settings/OplusBaseSettings$OplusFileOutputStream;->contentResolver:Landroid/content/ContentResolver;

    .line 215
    iput-object p3, p0, Lcom/oplus/settings/OplusBaseSettings$OplusFileOutputStream;->uri:Landroid/net/Uri;

    .line 216
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 221
    iget-object v0, p0, Lcom/oplus/settings/OplusBaseSettings$OplusFileOutputStream;->contentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oplus/settings/OplusBaseSettings$OplusFileOutputStream;->callCount:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 222
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/settings/OplusBaseSettings$OplusFileOutputStream;->callCount:I

    .line 223
    iget-object v1, p0, Lcom/oplus/settings/OplusBaseSettings$OplusFileOutputStream;->uri:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    :cond_0
    return-void
.end method
