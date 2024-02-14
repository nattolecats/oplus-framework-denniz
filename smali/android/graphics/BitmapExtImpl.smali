.class public Landroid/graphics/BitmapExtImpl;
.super Ljava/lang/Object;
.source "BitmapExtImpl.java"

# interfaces
.implements Landroid/graphics/IBitmapExt;


# static fields
.field private static blacklist sOsenseClient:Lcom/oplus/osense/OsenseResClient;


# instance fields
.field private blacklist mBitmapHeight:I

.field private blacklist mBitmapWidth:I

.field private blacklist mColorState:I

.field private blacklist mIsAssetSource:Z

.field private blacklist mIsCalculatedColor:Z

.field private blacklist mIsCanvasBaseBitmap:Z

.field private blacklist mIsViewSrc:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/BitmapExtImpl;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapExtImpl;->mIsAssetSource:Z

    .line 34
    iput-boolean v0, p0, Landroid/graphics/BitmapExtImpl;->mIsCalculatedColor:Z

    .line 35
    iput v0, p0, Landroid/graphics/BitmapExtImpl;->mColorState:I

    .line 36
    iput-boolean v0, p0, Landroid/graphics/BitmapExtImpl;->mIsCanvasBaseBitmap:Z

    .line 37
    iput-boolean v0, p0, Landroid/graphics/BitmapExtImpl;->mIsViewSrc:Z

    .line 38
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/graphics/BitmapExtImpl;->mBitmapWidth:I

    .line 39
    iput v0, p0, Landroid/graphics/BitmapExtImpl;->mBitmapHeight:I

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist getColorState()I
    .locals 1

    .line 67
    iget v0, p0, Landroid/graphics/BitmapExtImpl;->mColorState:I

    return v0
.end method

.method public blacklist hasCalculatedColor()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Landroid/graphics/BitmapExtImpl;->mIsCalculatedColor:Z

    return v0
.end method

.method public blacklist isAssetSource()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Landroid/graphics/BitmapExtImpl;->mIsAssetSource:Z

    return v0
.end method

.method public blacklist isCanvasBaseBitmap()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Landroid/graphics/BitmapExtImpl;->mIsCanvasBaseBitmap:Z

    return v0
.end method

.method public blacklist isViewSrc()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Landroid/graphics/BitmapExtImpl;->mIsViewSrc:Z

    return v0
.end method

.method public blacklist osenseClrSceneAction(JII)V
    .locals 2
    .param p1, "request"    # J
    .param p3, "mWidth"    # I
    .param p4, "mHeight"    # I

    .line 107
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "holi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/graphics/BitmapExtImpl;->mBitmapWidth:I

    if-gt p3, v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapExtImpl;->mBitmapHeight:I

    if-le p4, v0, :cond_1

    .line 108
    :cond_0
    sget-object v0, Landroid/graphics/BitmapExtImpl;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0, p1, p2}, Lcom/oplus/osense/OsenseResClient;->osenseClrSceneAction(J)V

    .line 112
    :cond_1
    return-void
.end method

.method public blacklist osenseSetSceneAction(III)J
    .locals 4
    .param p1, "timeout"    # I
    .param p2, "mWidth"    # I
    .param p3, "mHeight"    # I

    .line 97
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "holi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/graphics/BitmapExtImpl;->mBitmapWidth:I

    if-gt p2, v0, :cond_0

    iget v0, p0, Landroid/graphics/BitmapExtImpl;->mBitmapHeight:I

    if-le p3, v0, :cond_2

    .line 98
    :cond_0
    sget-object v0, Landroid/graphics/BitmapExtImpl;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    if-nez v0, :cond_1

    const-class v0, Landroid/graphics/BitmapExtImpl;

    invoke-static {v0}, Lcom/oplus/osense/OsenseResClient;->get(Ljava/lang/Class;)Lcom/oplus/osense/OsenseResClient;

    move-result-object v0

    sput-object v0, Landroid/graphics/BitmapExtImpl;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    if-eqz v0, :cond_2

    .line 99
    :cond_1
    sget-object v0, Landroid/graphics/BitmapExtImpl;->sOsenseClient:Lcom/oplus/osense/OsenseResClient;

    new-instance v1, Lcom/oplus/osense/info/OsenseSaRequest;

    const-string v2, "OSENSE_SYSTEM_SCENE_BITMAP"

    const-string v3, "OSENSE_ACTION_COMPRESS"

    invoke-direct {v1, v2, v3, p1}, Lcom/oplus/osense/info/OsenseSaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/osense/OsenseResClient;->osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J

    move-result-wide v0

    return-wide v0

    .line 102
    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist setColorState(I)V
    .locals 0
    .param p1, "colorState"    # I

    .line 72
    iput p1, p0, Landroid/graphics/BitmapExtImpl;->mColorState:I

    .line 73
    return-void
.end method

.method public blacklist setHasCalculatedColor(Z)V
    .locals 0
    .param p1, "isCalculatedColor"    # Z

    .line 52
    iput-boolean p1, p0, Landroid/graphics/BitmapExtImpl;->mIsCalculatedColor:Z

    .line 53
    return-void
.end method

.method public blacklist setIsAssetSource(Z)V
    .locals 0
    .param p1, "isAssetSource"    # Z

    .line 62
    iput-boolean p1, p0, Landroid/graphics/BitmapExtImpl;->mIsAssetSource:Z

    .line 63
    return-void
.end method

.method public blacklist setIsCanvasBaseBitmap(Z)V
    .locals 0
    .param p1, "isCanvasBaseBitmap"    # Z

    .line 77
    iput-boolean p1, p0, Landroid/graphics/BitmapExtImpl;->mIsCanvasBaseBitmap:Z

    .line 78
    return-void
.end method

.method public blacklist setIsViewSrc(Z)V
    .locals 0
    .param p1, "isViewSrc"    # Z

    .line 92
    iput-boolean p1, p0, Landroid/graphics/BitmapExtImpl;->mIsViewSrc:Z

    .line 93
    return-void
.end method
