.class Lcom/oplus/settings/OplusBaseSettings$AssertFileAutoCloseOutputStream;
.super Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;
.source "OplusBaseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/settings/OplusBaseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssertFileAutoCloseOutputStream"
.end annotation


# instance fields
.field private blacklist callCount:I

.field private final blacklist contentResolver:Landroid/content/ContentResolver;

.field private final blacklist uri:Landroid/net/Uri;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/AssetFileDescriptor;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-direct {p0, p1}, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 254
    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/settings/OplusBaseSettings$AssertFileAutoCloseOutputStream;->callCount:I

    .line 258
    iput-object p2, p0, Lcom/oplus/settings/OplusBaseSettings$AssertFileAutoCloseOutputStream;->contentResolver:Landroid/content/ContentResolver;

    .line 259
    iput-object p3, p0, Lcom/oplus/settings/OplusBaseSettings$AssertFileAutoCloseOutputStream;->uri:Landroid/net/Uri;

    .line 260
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

    .line 264
    invoke-super {p0}, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;->close()V

    .line 265
    iget-object v0, p0, Lcom/oplus/settings/OplusBaseSettings$AssertFileAutoCloseOutputStream;->contentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oplus/settings/OplusBaseSettings$AssertFileAutoCloseOutputStream;->callCount:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 266
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oplus/settings/OplusBaseSettings$AssertFileAutoCloseOutputStream;->callCount:I

    .line 267
    iget-object v1, p0, Lcom/oplus/settings/OplusBaseSettings$AssertFileAutoCloseOutputStream;->uri:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 269
    :cond_0
    return-void
.end method
