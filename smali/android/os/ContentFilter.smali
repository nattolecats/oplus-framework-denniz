.class Landroid/os/ContentFilter;
.super Ljava/lang/Object;
.source "ContentFilter.java"


# instance fields
.field private final blacklist mContentFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHashCode:I


# direct methods
.method constructor blacklist <init>(ILjava/util/Map;)V
    .locals 1
    .param p1, "hashCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 10
    .local p2, "filter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Landroid/os/ContentFilter;->mHashCode:I

    .line 12
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ContentFilter;->mContentFilter:Ljava/util/Map;

    .line 13
    return-void
.end method


# virtual methods
.method public blacklist getHashCode()I
    .locals 1

    .line 26
    iget v0, p0, Landroid/os/ContentFilter;->mHashCode:I

    return v0
.end method

.method public blacklist matchContent(Ljava/lang/String;)I
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 22
    iget-object v0, p0, Landroid/os/ContentFilter;->mContentFilter:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
