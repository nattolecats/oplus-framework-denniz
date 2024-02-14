.class public Landroid/view/autolayout/OplusAutoLayoutManager;
.super Ljava/lang/Object;
.source "OplusAutoLayoutManager.java"

# interfaces
.implements Landroid/view/autolayout/IOplusAutoLayoutManager;


# static fields
.field private static final blacklist AUTO_LAYOUT_PACKAGE_LIST:[Ljava/lang/String;

.field public static final blacklist AUTO_LAYOUT_WINDOW_WIDTH:I = 0x434

.field private static blacklist sDebug:Z

.field private static blacklist sDebugInited:Z


# instance fields
.field private blacklist mCurrPackageName:Ljava/lang/String;

.field private blacklist mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 21

    .line 45
    const-string v0, "com.youdao.note"

    const-string v1, "com.netease.cloudmusic"

    const-string v2, "com.bankcomm.maidanba"

    const-string v3, "cn.com.hzb.mobilebank.per"

    const-string v4, "com.hxb.mobile.client"

    const-string v5, "com.bankcomm.Bankcomm"

    const-string v6, "com.xingin.xhs"

    const-string v7, "com.icbc"

    const-string v8, "com.cgbchina.xpt"

    const-string v9, "com.homelink.android"

    const-string v10, "com.ss.android.article.news"

    const-string v11, "com.baidu.searchbox"

    const-string v12, "com.dianping.v1"

    const-string v13, "com.ximalaya.ting.android"

    const-string v14, "com.unionpay"

    const-string v15, "com.wuba.zhuanzhuan"

    const-string v16, "com.xgimi.zhushou"

    const-string v17, "com.achievo.vipshop"

    const-string v18, "com.hundsun.winner.pazq"

    const-string v19, "com.sina.weibo"

    const-string v20, "com.galaxy.stock"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/autolayout/OplusAutoLayoutManager;->AUTO_LAYOUT_PACKAGE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mCurrPackageName:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/view/autolayout/AutoLayoutPolicyFactory;

    invoke-direct {v0}, Landroid/view/autolayout/AutoLayoutPolicyFactory;-><init>()V

    iput-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    .line 77
    return-void
.end method

.method private blacklist isInAutoLayoutList()Z
    .locals 1

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist modifyAutoLayoutMetrics(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 223
    const/16 v0, 0x19

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "callerStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyAutoLayoutMetrics called from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/autolayout/AutoLayoutDebug;->log(Ljava/lang/String;)V

    .line 225
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 226
    .local v1, "autoLayoutDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1, p1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 227
    const/16 v2, 0x434

    iput v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 228
    iput v2, v1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 229
    return-object v1
.end method


# virtual methods
.method public blacklist afterDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 114
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getDrawPolicy()Landroid/view/autolayout/IAutoLayoutDrawPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/autolayout/IAutoLayoutDrawPolicy;->afterDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 117
    :cond_0
    return-void
.end method

.method public blacklist afterLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 144
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getLayoutPolicy()Landroid/view/autolayout/IAutoLayoutLayoutPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IAutoLayoutLayoutPolicy;->afterLayout(Landroid/view/View;)V

    .line 147
    :cond_0
    return-void
.end method

.method public blacklist afterMeasure(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 130
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getMeasurePolicy()Landroid/view/autolayout/IAutoLayoutMeasurePolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IAutoLayoutMeasurePolicy;->afterMeasure(Landroid/view/View;)V

    .line 133
    :cond_0
    return-void
.end method

.method public blacklist beforeDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 107
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getDrawPolicy()Landroid/view/autolayout/IAutoLayoutDrawPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/autolayout/IAutoLayoutDrawPolicy;->beforeDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 110
    :cond_0
    return-void
.end method

.method public blacklist beforeLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 137
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getLayoutPolicy()Landroid/view/autolayout/IAutoLayoutLayoutPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IAutoLayoutLayoutPolicy;->beforeLayout(Landroid/view/View;)V

    .line 140
    :cond_0
    return-void
.end method

.method public blacklist beforeMeasure(Landroid/view/View;II)[I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 121
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getMeasurePolicy()Landroid/view/autolayout/IAutoLayoutMeasurePolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/autolayout/IAutoLayoutMeasurePolicy;->beforeMeasure(Landroid/view/View;II)[I

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    aput p3, v0, v1

    return-object v0
.end method

.method public blacklist beforeUpdateDisplayListIfDirty(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 100
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getDrawPolicy()Landroid/view/autolayout/IAutoLayoutDrawPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IAutoLayoutDrawPolicy;->beforeUpdateDisplayListIfDirty(Landroid/view/View;)V

    .line 103
    :cond_0
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 179
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getDrawPolicy()Landroid/view/autolayout/IAutoLayoutDrawPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/autolayout/IAutoLayoutDrawPolicy;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 182
    :cond_0
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 187
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getDrawPolicy()Landroid/view/autolayout/IAutoLayoutDrawPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/autolayout/IAutoLayoutDrawPolicy;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 190
    :cond_0
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 195
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getDrawPolicy()Landroid/view/autolayout/IAutoLayoutDrawPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/autolayout/IAutoLayoutDrawPolicy;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 198
    :cond_0
    return-void
.end method

.method public blacklist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 203
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getDrawPolicy()Landroid/view/autolayout/IAutoLayoutDrawPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/autolayout/IAutoLayoutDrawPolicy;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 206
    :cond_0
    return-void
.end method

.method public blacklist end()V
    .locals 2

    .line 217
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getDrawPolicy()Landroid/view/autolayout/IAutoLayoutDrawPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutDrawPolicy;->end()V

    .line 220
    :cond_0
    return-void
.end method

.method public blacklist getAutoLayoutDisplayMetrics(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 2
    .param p1, "originalMetrics"    # Landroid/util/DisplayMetrics;

    .line 90
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getMeasurePolicy()Landroid/view/autolayout/IAutoLayoutMeasurePolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IAutoLayoutMeasurePolicy;->setOriginalDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    invoke-direct {p0, p1}, Landroid/view/autolayout/OplusAutoLayoutManager;->modifyAutoLayoutMetrics(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    return-object p1
.end method

.method public blacklist hookSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 169
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getLayoutPolicy()Landroid/view/autolayout/IAutoLayoutLayoutPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IAutoLayoutLayoutPolicy;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    return-object p1
.end method

.method public blacklist setAutoLayoutPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mCurrPackageName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public blacklist setTo(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 151
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 153
    .local v0, "density":F
    const v1, 0x44868000    # 1076.0f

    div-float v2, v1, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 154
    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 156
    .end local v0    # "density":F
    :cond_0
    return-void
.end method

.method public blacklist start()V
    .locals 2

    .line 210
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/view/autolayout/OplusAutoLayoutManager;->mPolicyFactory:Landroid/view/autolayout/AutoLayoutPolicyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/autolayout/AutoLayoutPolicyFactory;->getPolicy(I)Landroid/view/autolayout/IAutoLayoutPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutPolicy;->getDrawPolicy()Landroid/view/autolayout/IAutoLayoutDrawPolicy;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/autolayout/IAutoLayoutDrawPolicy;->start()V

    .line 213
    :cond_0
    return-void
.end method

.method public blacklist updateFrom(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 160
    invoke-direct {p0}, Landroid/view/autolayout/OplusAutoLayoutManager;->isInAutoLayoutList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 162
    .local v0, "density":F
    const v1, 0x44868000    # 1076.0f

    div-float v2, v1, v0

    float-to-int v2, v2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 163
    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 165
    .end local v0    # "density":F
    :cond_0
    return-void
.end method
