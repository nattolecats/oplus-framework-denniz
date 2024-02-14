.class public Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;
.super Ljava/lang/Object;
.source "FwkCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/multisearch/FwkCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowContainerTokenWrapper"
.end annotation


# instance fields
.field private blacklist mDelegate:Landroid/window/WindowContainerToken;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/WindowContainerToken;)V
    .locals 0
    .param p1, "token"    # Landroid/window/WindowContainerToken;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;->mDelegate:Landroid/window/WindowContainerToken;

    .line 197
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 208
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 209
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;

    .line 211
    .local v0, "that":Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;
    iget-object v1, p0, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;->mDelegate:Landroid/window/WindowContainerToken;

    iget-object v2, v0, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;->mDelegate:Landroid/window/WindowContainerToken;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 209
    .end local v0    # "that":Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWindowContainerToken()Landroid/window/WindowContainerToken;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;->mDelegate:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 216
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;->mDelegate:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
