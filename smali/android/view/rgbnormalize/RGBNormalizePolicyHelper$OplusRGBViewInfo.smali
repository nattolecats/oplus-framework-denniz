.class public Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;
.super Ljava/lang/Object;
.source "RGBNormalizePolicyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OplusRGBViewInfo"
.end annotation


# instance fields
.field private blacklist mMaxGrayScaleValue:I

.field private blacklist mMinGrayScaleValue:I

.field private blacklist mViewName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/16 v0, 0xff

    iput v0, p0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->mMaxGrayScaleValue:I

    return-void
.end method


# virtual methods
.method public blacklist getMaxGrayScaleValue()I
    .locals 1

    .line 152
    iget v0, p0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->mMaxGrayScaleValue:I

    return v0
.end method

.method public blacklist getMinGrayScaleValue()I
    .locals 1

    .line 156
    iget v0, p0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->mMinGrayScaleValue:I

    return v0
.end method

.method public blacklist getViewName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->mViewName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setMaxGrayScaleValue(I)V
    .locals 0
    .param p1, "maxGrayScaleValue"    # I

    .line 164
    iput p1, p0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->mMaxGrayScaleValue:I

    .line 165
    return-void
.end method

.method public blacklist setMinGrayScaleValue(I)V
    .locals 0
    .param p1, "minGrayScaleValue"    # I

    .line 168
    iput p1, p0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->mMinGrayScaleValue:I

    .line 169
    return-void
.end method

.method public blacklist setViewName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->mViewName:Ljava/lang/String;

    .line 161
    return-void
.end method
