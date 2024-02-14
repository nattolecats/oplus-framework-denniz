.class Lcom/oplus/uifirst/FBThreadManager$FBPara;
.super Ljava/lang/Object;
.source "FBThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uifirst/FBThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FBPara"
.end annotation


# instance fields
.field blacklist boostFreq:I

.field blacklist boostMigr:I

.field blacklist vutilMargin:I


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 799
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 800
    return v0

    .line 803
    :cond_0
    instance-of v1, p1, Lcom/oplus/uifirst/FBThreadManager$FBPara;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 804
    move-object v1, p1

    check-cast v1, Lcom/oplus/uifirst/FBThreadManager$FBPara;

    .line 805
    .local v1, "para":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    iget v3, v1, Lcom/oplus/uifirst/FBThreadManager$FBPara;->boostFreq:I

    iget v4, p0, Lcom/oplus/uifirst/FBThreadManager$FBPara;->boostFreq:I

    if-ne v3, v4, :cond_1

    iget v3, v1, Lcom/oplus/uifirst/FBThreadManager$FBPara;->boostMigr:I

    iget v4, p0, Lcom/oplus/uifirst/FBThreadManager$FBPara;->boostMigr:I

    if-ne v3, v4, :cond_1

    iget v3, v1, Lcom/oplus/uifirst/FBThreadManager$FBPara;->vutilMargin:I

    iget v4, p0, Lcom/oplus/uifirst/FBThreadManager$FBPara;->vutilMargin:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 808
    .end local v1    # "para":Lcom/oplus/uifirst/FBThreadManager$FBPara;
    :cond_2
    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 813
    iget v0, p0, Lcom/oplus/uifirst/FBThreadManager$FBPara;->boostFreq:I

    iget v1, p0, Lcom/oplus/uifirst/FBThreadManager$FBPara;->boostMigr:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/uifirst/FBThreadManager$FBPara;->vutilMargin:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FBPara: boostFreq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/uifirst/FBThreadManager$FBPara;->boostFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boostMigr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/uifirst/FBThreadManager$FBPara;->boostMigr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vutilMargin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/uifirst/FBThreadManager$FBPara;->vutilMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
