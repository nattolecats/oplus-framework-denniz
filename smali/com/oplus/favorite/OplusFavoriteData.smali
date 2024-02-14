.class public Lcom/oplus/favorite/OplusFavoriteData;
.super Ljava/lang/Object;
.source "OplusFavoriteData.java"


# static fields
.field public static final blacklist DATA_CONTENT:Ljava/lang/String; = "data_content"

.field public static final blacklist DATA_EXTRA:Ljava/lang/String; = "data_extra"

.field public static final blacklist DATA_TITLE:Ljava/lang/String; = "data_title"

.field public static final blacklist DATA_URL:Ljava/lang/String; = "data_url"


# instance fields
.field private blacklist mContent:Ljava/lang/String;

.field private blacklist mExtra:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mUrl:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteData;->mTitle:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteData;->mUrl:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteData;->mContent:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteData;->mExtra:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getContent()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteData;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExtra()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteData;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUrl()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteData;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/oplus/favorite/OplusFavoriteData;->mContent:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public blacklist setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/oplus/favorite/OplusFavoriteData;->mExtra:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/oplus/favorite/OplusFavoriteData;->mTitle:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public blacklist setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/oplus/favorite/OplusFavoriteData;->mUrl:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FavoriteData{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "mTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/oplus/favorite/OplusFavoriteData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcom/oplus/favorite/OplusFavoriteData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ", mContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/oplus/favorite/OplusFavoriteData;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", mExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lcom/oplus/favorite/OplusFavoriteData;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
