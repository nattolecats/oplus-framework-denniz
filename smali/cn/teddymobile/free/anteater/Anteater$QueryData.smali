.class public Lcn/teddymobile/free/anteater/Anteater$QueryData;
.super Ljava/lang/Object;
.source "Anteater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/teddymobile/free/anteater/Anteater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryData"
.end annotation


# instance fields
.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mUrl:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/teddymobile/free/anteater/Anteater$QueryData;->mTitle:Ljava/lang/String;

    .line 514
    iput-object v0, p0, Lcn/teddymobile/free/anteater/Anteater$QueryData;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 518
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 519
    return v0

    .line 521
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 522
    return v1

    .line 524
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 525
    return v1

    .line 527
    :cond_2
    move-object v2, p1

    check-cast v2, Lcn/teddymobile/free/anteater/Anteater$QueryData;

    .line 528
    .local v2, "other":Lcn/teddymobile/free/anteater/Anteater$QueryData;
    iget-object v3, p0, Lcn/teddymobile/free/anteater/Anteater$QueryData;->mTitle:Ljava/lang/String;

    iget-object v4, v2, Lcn/teddymobile/free/anteater/Anteater$QueryData;->mTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 529
    return v1

    .line 531
    :cond_3
    iget-object v3, p0, Lcn/teddymobile/free/anteater/Anteater$QueryData;->mUrl:Ljava/lang/String;

    iget-object v4, v2, Lcn/teddymobile/free/anteater/Anteater$QueryData;->mUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 532
    return v1

    .line 534
    :cond_4
    return v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater$QueryData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUrl()Ljava/lang/String;
    .locals 1

    .line 560
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater$QueryData;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isValid()Z
    .locals 2

    .line 538
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater$QueryData;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 539
    return v1

    .line 541
    :cond_0
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater$QueryData;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    return v1

    .line 544
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 548
    iput-object p1, p0, Lcn/teddymobile/free/anteater/Anteater$QueryData;->mTitle:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public blacklist setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 552
    iput-object p1, p0, Lcn/teddymobile/free/anteater/Anteater$QueryData;->mUrl:Ljava/lang/String;

    .line 553
    return-void
.end method
