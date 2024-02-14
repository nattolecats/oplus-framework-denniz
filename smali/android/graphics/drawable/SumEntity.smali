.class public Landroid/graphics/drawable/SumEntity;
.super Ljava/lang/Object;
.source "SumEntity.java"


# instance fields
.field blacklist mCount:I

.field blacklist mMax:F

.field blacklist mMin:F

.field blacklist mTotal:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/SumEntity;->mMin:F

    .line 5
    iput v0, p0, Landroid/graphics/drawable/SumEntity;->mMax:F

    .line 6
    iput v0, p0, Landroid/graphics/drawable/SumEntity;->mTotal:F

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/SumEntity;->mCount:I

    return-void
.end method


# virtual methods
.method public blacklist add(F)V
    .locals 1
    .param p1, "sample"    # F

    .line 17
    iget v0, p0, Landroid/graphics/drawable/SumEntity;->mCount:I

    if-nez v0, :cond_0

    .line 18
    iput p1, p0, Landroid/graphics/drawable/SumEntity;->mMin:F

    .line 19
    iput p1, p0, Landroid/graphics/drawable/SumEntity;->mMax:F

    goto :goto_0

    .line 21
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/SumEntity;->mMin:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/SumEntity;->mMin:F

    .line 22
    iget v0, p0, Landroid/graphics/drawable/SumEntity;->mMax:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/SumEntity;->mMax:F

    .line 24
    :goto_0
    iget v0, p0, Landroid/graphics/drawable/SumEntity;->mTotal:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/drawable/SumEntity;->mTotal:F

    .line 25
    iget v0, p0, Landroid/graphics/drawable/SumEntity;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/drawable/SumEntity;->mCount:I

    .line 26
    return-void
.end method

.method public blacklist average()F
    .locals 2

    .line 28
    iget v0, p0, Landroid/graphics/drawable/SumEntity;->mTotal:F

    iget v1, p0, Landroid/graphics/drawable/SumEntity;->mCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public blacklist count()I
    .locals 1

    .line 36
    iget v0, p0, Landroid/graphics/drawable/SumEntity;->mCount:I

    return v0
.end method

.method public blacklist delta()F
    .locals 2

    .line 34
    iget v0, p0, Landroid/graphics/drawable/SumEntity;->mMax:F

    iget v1, p0, Landroid/graphics/drawable/SumEntity;->mMin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public blacklist max()F
    .locals 1

    .line 32
    iget v0, p0, Landroid/graphics/drawable/SumEntity;->mMax:F

    return v0
.end method

.method public blacklist min()F
    .locals 1

    .line 30
    iget v0, p0, Landroid/graphics/drawable/SumEntity;->mMin:F

    return v0
.end method

.method public blacklist reset()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/SumEntity;->mMin:F

    .line 11
    iput v0, p0, Landroid/graphics/drawable/SumEntity;->mMax:F

    .line 12
    iput v0, p0, Landroid/graphics/drawable/SumEntity;->mTotal:F

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/SumEntity;->mCount:I

    .line 14
    return-void
.end method
