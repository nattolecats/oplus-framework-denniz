.class public Landroid/view/OplusViewConfigHelper;
.super Ljava/lang/Object;
.source "OplusViewConfigHelper.java"

# interfaces
.implements Landroid/view/IOplusViewConfigHelper;


# instance fields
.field private blacklist mColorOverDist:I

.field private blacklist mForceUsingSpring:Z

.field private blacklist mIsColorStyle:Z

.field private blacklist mOptEnable:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/view/OplusViewConfigHelper;->mColorOverDist:I

    .line 35
    invoke-static {p1}, Lcom/oplus/util/OplusContextUtil;->isOplusOSStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mIsColorStyle:Z

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist calcRealOverScrollDist(II)I
    .locals 4
    .param p1, "dist"    # I
    .param p2, "scrollY"    # I

    .line 59
    iget-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mIsColorStyle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mOptEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mForceUsingSpring:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calcRealOverScrollDist: a-scrollY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestOverScroll"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    int-to-float v0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v3, p0, Landroid/view/OplusViewConfigHelper;->mColorOverDist:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 63
    :cond_0
    return p1
.end method

.method public whitelist calcRealOverScrollDist(III)I
    .locals 5
    .param p1, "dist"    # I
    .param p2, "scrollY"    # I
    .param p3, "range"    # I

    .line 68
    iget-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mIsColorStyle:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mOptEnable:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mForceUsingSpring:Z

    if-eqz v0, :cond_2

    if-ltz p2, :cond_0

    if-le p2, p3, :cond_2

    .line 69
    :cond_0
    move v0, p2

    .line 70
    .local v0, "overScrollY":I
    if-le p2, p3, :cond_1

    .line 71
    sub-int v0, p2, p3

    .line 73
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calcRealOverScrollDist: b-scrollY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestOverScroll"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    int-to-float v1, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v4, p0, Landroid/view/OplusViewConfigHelper;->mColorOverDist:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 76
    .end local v0    # "overScrollY":I
    :cond_2
    return p1
.end method

.method public whitelist getScaledOverflingDistance(I)I
    .locals 1
    .param p1, "dist"    # I

    .line 50
    iget-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mIsColorStyle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mOptEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mForceUsingSpring:Z

    if-eqz v0, :cond_0

    .line 51
    iget v0, p0, Landroid/view/OplusViewConfigHelper;->mColorOverDist:I

    return v0

    .line 53
    :cond_0
    return p1
.end method

.method public whitelist getScaledOverscrollDistance(I)I
    .locals 3
    .param p1, "dist"    # I

    .line 40
    iget-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mIsColorStyle:Z

    const-string v1, "TestOverScroll"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mOptEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/OplusViewConfigHelper;->mForceUsingSpring:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScaledOverscrollDistance: a mColorOverDist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/OplusViewConfigHelper;->mColorOverDist:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget v0, p0, Landroid/view/OplusViewConfigHelper;->mColorOverDist:I

    return v0

    .line 44
    :cond_0
    const-string v0, "getScaledOverscrollDistance: b"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return p1
.end method

.method public whitelist setForceUsingSpring(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 85
    iput-boolean p1, p0, Landroid/view/OplusViewConfigHelper;->mForceUsingSpring:Z

    .line 86
    return-void
.end method

.method public whitelist setOptEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 81
    iput-boolean p1, p0, Landroid/view/OplusViewConfigHelper;->mOptEnable:Z

    .line 82
    return-void
.end method
