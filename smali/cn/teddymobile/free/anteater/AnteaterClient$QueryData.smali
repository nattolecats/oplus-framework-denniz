.class public Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;
.super Ljava/lang/Object;
.source "AnteaterClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/teddymobile/free/anteater/AnteaterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryData"
.end annotation


# instance fields
.field private blacklist mContent:Ljava/lang/String;

.field private blacklist mExtra:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mUrl:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mTitle:Ljava/lang/String;

    .line 801
    iput-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mUrl:Ljava/lang/String;

    .line 802
    const-string v0, ""

    iput-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mContent:Ljava/lang/String;

    .line 803
    iput-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mExtra:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 807
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 808
    return v0

    .line 810
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 811
    return v1

    .line 813
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 814
    return v1

    .line 816
    :cond_2
    move-object v2, p1

    check-cast v2, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;

    .line 817
    .local v2, "other":Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;
    iget-object v3, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mTitle:Ljava/lang/String;

    iget-object v4, v2, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 818
    return v1

    .line 820
    :cond_3
    iget-object v3, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mUrl:Ljava/lang/String;

    iget-object v4, v2, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 821
    return v1

    .line 823
    :cond_4
    iget-object v3, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mContent:Ljava/lang/String;

    iget-object v4, v2, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mContent:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 824
    return v1

    .line 826
    :cond_5
    return v0
.end method

.method public blacklist getContent()Ljava/lang/String;
    .locals 1

    .line 867
    iget-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExtra()Ljava/lang/String;
    .locals 1

    .line 871
    iget-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .locals 1

    .line 859
    iget-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUrl()Ljava/lang/String;
    .locals 1

    .line 863
    iget-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isValid()Z
    .locals 2

    .line 830
    iget-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 831
    return v1

    .line 833
    :cond_0
    iget-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    return v1

    .line 836
    :cond_1
    iget-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 837
    return v1

    .line 839
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 851
    iput-object p1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mContent:Ljava/lang/String;

    .line 852
    return-void
.end method

.method public blacklist setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .line 855
    iput-object p1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mExtra:Ljava/lang/String;

    .line 856
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 843
    iput-object p1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mTitle:Ljava/lang/String;

    .line 844
    return-void
.end method

.method public blacklist setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 847
    iput-object p1, p0, Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;->mUrl:Ljava/lang/String;

    .line 848
    return-void
.end method
