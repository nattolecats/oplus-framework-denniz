.class public Lcom/oplus/content/AppFeatureCache$AppFeatureData;
.super Ljava/lang/Object;
.source "AppFeatureCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/AppFeatureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppFeatureData"
.end annotation


# instance fields
.field private final blacklist _id:Ljava/lang/Integer;

.field private final blacklist featureName:Ljava/lang/String;

.field private final blacklist jasonStr:Ljava/lang/String;

.field private final blacklist parameters:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;
    .param p4, "jason"    # Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->_id:Ljava/lang/Integer;

    .line 165
    iput-object p2, p0, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->featureName:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->parameters:Ljava/lang/String;

    .line 167
    iput-object p4, p0, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->jasonStr:Ljava/lang/String;

    .line 168
    return-void
.end method


# virtual methods
.method public blacklist getFeatureName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->featureName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/Integer;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist getJasonStr()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->jasonStr:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParameters()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->parameters:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFeatureData{_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "featureName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->featureName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", parameters=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->parameters:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", jasonStr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->jasonStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
