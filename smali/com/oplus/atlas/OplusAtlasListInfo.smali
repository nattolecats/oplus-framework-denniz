.class public Lcom/oplus/atlas/OplusAtlasListInfo;
.super Ljava/lang/Object;
.source "OplusAtlasListInfo.java"


# instance fields
.field private blacklist mAttribute:Ljava/lang/String;

.field private blacklist mListInfo:Ljava/lang/String;

.field private blacklist mModule:Ljava/lang/String;

.field private blacklist mName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAttribute()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/oplus/atlas/OplusAtlasListInfo;->mAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getListInfo()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v0, "str":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/oplus/atlas/OplusAtlasListInfo;->mModule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v2, p0, Lcom/oplus/atlas/OplusAtlasListInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lcom/oplus/atlas/OplusAtlasListInfo;->mAttribute:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/atlas/OplusAtlasListInfo;->mListInfo:Ljava/lang/String;

    .line 57
    return-object v1
.end method

.method public blacklist getModule()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/oplus/atlas/OplusAtlasListInfo;->mModule:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/oplus/atlas/OplusAtlasListInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/oplus/atlas/OplusAtlasListInfo;->mAttribute:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public blacklist setModule(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/oplus/atlas/OplusAtlasListInfo;->mModule:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/oplus/atlas/OplusAtlasListInfo;->mName:Ljava/lang/String;

    .line 31
    return-void
.end method
