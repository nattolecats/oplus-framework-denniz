.class public Landroid/view/autolayout/AutoLayoutViewInfo;
.super Ljava/lang/Object;
.source "AutoLayoutViewInfo.java"


# static fields
.field public static final blacklist FILL_PATTERN_ALL:I = 0x3

.field public static final blacklist FILL_PATTERN_NONE:I = 0x1

.field public static final blacklist FILL_PATTERN_SCALE_ONLY:I = 0x2

.field public static final blacklist TYPE_FULL:I = 0x3

.field public static final blacklist TYPE_LARGE:I = 0x2

.field public static final blacklist TYPE_NORMAL:I = 0x1


# instance fields
.field private blacklist mExtraInfo:Ljava/lang/StringBuilder;

.field private blacklist mFillBackgroundPattern:I

.field private blacklist mHeightType:I

.field private blacklist mIsFlatView:Z

.field private blacklist mIsImageType:Z

.field private blacklist mNeedStretchItems:Z

.field private blacklist mScaleType:Landroid/widget/ImageView$ScaleType;

.field private blacklist mWidthType:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mWidthType:I

    .line 43
    iput v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mHeightType:I

    .line 46
    iput v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mFillBackgroundPattern:I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mExtraInfo:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public blacklist getExtraInfo()Ljava/lang/StringBuilder;
    .locals 1

    .line 113
    iget-object v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mExtraInfo:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public blacklist getFillBackgroundPattern()I
    .locals 1

    .line 89
    iget v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mFillBackgroundPattern:I

    return v0
.end method

.method public blacklist getHeightType()I
    .locals 1

    .line 81
    iget v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mHeightType:I

    return v0
.end method

.method public blacklist getIsFlatView()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mIsFlatView:Z

    return v0
.end method

.method public blacklist getIsImageType()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mIsImageType:Z

    return v0
.end method

.method public blacklist getNeedStretchItems()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mNeedStretchItems:Z

    return v0
.end method

.method public blacklist getOriginScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public blacklist getWidthType()I
    .locals 1

    .line 73
    iget v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mWidthType:I

    return v0
.end method

.method public blacklist reset()V
    .locals 2

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/autolayout/AutoLayoutViewInfo;->setNeedStretchItems(Z)V

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/autolayout/AutoLayoutViewInfo;->setIsFlatView(Z)V

    .line 119
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/autolayout/AutoLayoutViewInfo;->setWidthType(I)V

    .line 120
    invoke-virtual {p0, v1}, Landroid/view/autolayout/AutoLayoutViewInfo;->setHeightType(I)V

    .line 121
    invoke-virtual {p0, v0}, Landroid/view/autolayout/AutoLayoutViewInfo;->setIsImageType(Z)V

    .line 122
    invoke-virtual {p0, v1}, Landroid/view/autolayout/AutoLayoutViewInfo;->setFillBackgroundPattern(I)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mExtraInfo:Ljava/lang/StringBuilder;

    .line 124
    return-void
.end method

.method public blacklist setExtraInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mExtraInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    return-void
.end method

.method public blacklist setFillBackgroundPattern(I)V
    .locals 0
    .param p1, "pattern"    # I

    .line 85
    iput p1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mFillBackgroundPattern:I

    .line 86
    return-void
.end method

.method public blacklist setHeightType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 77
    iput p1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mHeightType:I

    .line 78
    return-void
.end method

.method public blacklist setIsFlatView(Z)V
    .locals 0
    .param p1, "isFlatView"    # Z

    .line 93
    iput-boolean p1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mIsFlatView:Z

    .line 94
    return-void
.end method

.method public blacklist setIsImageType(Z)V
    .locals 0
    .param p1, "isImageType"    # Z

    .line 61
    iput-boolean p1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mIsImageType:Z

    .line 62
    return-void
.end method

.method public blacklist setNeedStretchItems(Z)V
    .locals 0
    .param p1, "needStretch"    # Z

    .line 53
    iput-boolean p1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mNeedStretchItems:Z

    .line 54
    return-void
.end method

.method public blacklist setOriginScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 101
    iput-object p1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 102
    return-void
.end method

.method public blacklist setWidthType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 69
    iput p1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mWidthType:I

    .line 70
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoLayoutViewInfo{mIsImageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mIsImageType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsFlatView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mIsFlatView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidthType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mWidthType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeightType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mHeightType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScaleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFillBackgroundPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mFillBackgroundPattern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNeedStretchItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mNeedStretchItems:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExtraInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autolayout/AutoLayoutViewInfo;->mExtraInfo:Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    return-object v0
.end method
