.class public Landroid/widget/AbsListViewExtImpl;
.super Ljava/lang/Object;
.source "AbsListViewExtImpl.java"

# interfaces
.implements Landroid/widget/IAbsListviewExt;


# static fields
.field static final blacklist EXCEPTION_NUM:I = 0x64

.field static final blacklist EXCEPTION_TIME_GAP:I = 0x32

.field static final blacklist LONG_FORMAT:[I

.field private static final blacklist TAG:Ljava/lang/String; = "AbsListViewExt"

.field static blacklist constantEndFlingNum:J

.field static blacklist isEnableEndFlingProtect:Z

.field static blacklist lastEndFlingTime:J


# instance fields
.field private blacklist mBase:Landroid/widget/AbsListView;

.field private blacklist mColorOverDist:I

.field private blacklist mContext:Landroid/content/Context;

.field protected blacklist mFlingFriction:F

.field private blacklist mIsColorStyle:Z

.field private blacklist mOplusViewConfigHelper:Landroid/view/IOplusViewConfigHelper;

.field protected blacklist mRealmeFlingFriction:F

.field private blacklist mTopThirdPartApp:Z

.field private blacklist viewExt:Landroid/view/IViewExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/AbsListViewExtImpl;->isEnableEndFlingProtect:Z

    .line 115
    const-wide/16 v1, 0x0

    sput-wide v1, Landroid/widget/AbsListViewExtImpl;->lastEndFlingTime:J

    .line 116
    sput-wide v1, Landroid/widget/AbsListViewExtImpl;->constantEndFlingNum:J

    .line 119
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x2020

    aput v2, v1, v0

    sput-object v1, Landroid/widget/AbsListViewExtImpl;->LONG_FORMAT:[I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListViewExtImpl;->mContext:Landroid/content/Context;

    .line 180
    const v0, 0x3f87ae14    # 1.06f

    iput v0, p0, Landroid/widget/AbsListViewExtImpl;->mFlingFriction:F

    .line 183
    const v0, 0x3c03126f    # 0.008f

    iput v0, p0, Landroid/widget/AbsListViewExtImpl;->mRealmeFlingFriction:F

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListViewExtImpl;->mTopThirdPartApp:Z

    .line 127
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Landroid/widget/AbsListViewExtImpl;->mBase:Landroid/widget/AbsListView;

    .line 128
    return-void
.end method


# virtual methods
.method public blacklist calcRealOverScrollDist(II)I
    .locals 4
    .param p1, "dist"    # I
    .param p2, "scrollY"    # I

    .line 73
    iget-boolean v0, p0, Landroid/widget/AbsListViewExtImpl;->mIsColorStyle:Z

    if-eqz v0, :cond_0

    .line 74
    int-to-float v0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v3, p0, Landroid/widget/AbsListViewExtImpl;->mColorOverDist:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 76
    :cond_0
    return p1
.end method

.method public blacklist calcRealOverScrollDist(III)I
    .locals 5
    .param p1, "dist"    # I
    .param p2, "scrollY"    # I
    .param p3, "range"    # I

    .line 81
    iget-boolean v0, p0, Landroid/widget/AbsListViewExtImpl;->mIsColorStyle:Z

    if-eqz v0, :cond_2

    if-ltz p2, :cond_0

    if-le p2, p3, :cond_2

    .line 82
    :cond_0
    move v0, p2

    .line 83
    .local v0, "overScrollY":I
    if-le p2, p3, :cond_1

    .line 84
    sub-int v0, p2, p3

    .line 86
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

    .line 87
    int-to-float v1, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v4, p0, Landroid/widget/AbsListViewExtImpl;->mColorOverDist:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 89
    .end local v0    # "overScrollY":I
    :cond_2
    return p1
.end method

.method public blacklist enableEndFlingProtectIfNeeded()Z
    .locals 2

    .line 145
    invoke-virtual {p0}, Landroid/widget/AbsListViewExtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gavin.example.abslistviewtest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 147
    :cond_1
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Landroid/widget/AbsListViewExtImpl;->isEnableEndFlingProtect:Z

    .line 148
    return v1
.end method

.method public blacklist execEndFlingProtectIfNeeded()V
    .locals 9

    .line 154
    sget-boolean v0, Landroid/widget/AbsListViewExtImpl;->isEnableEndFlingProtect:Z

    if-eqz v0, :cond_3

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 156
    .local v0, "curTime":J
    sget-wide v2, Landroid/widget/AbsListViewExtImpl;->lastEndFlingTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 157
    sget-wide v2, Landroid/widget/AbsListViewExtImpl;->constantEndFlingNum:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Landroid/widget/AbsListViewExtImpl;->constantEndFlingNum:J

    .line 158
    const-wide/16 v6, 0x64

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2

    .line 159
    const/4 v2, 0x1

    new-array v2, v2, [J

    .line 160
    .local v2, "oom_adj":[J
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 161
    .local v3, "pid":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/oom_adj"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/widget/AbsListViewExtImpl;->LONG_FORMAT:[I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v2, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 163
    const/4 v6, 0x0

    aget-wide v6, v2, v6

    cmp-long v4, v6, v4

    const-string v5, "AbsListViewExt"

    if-lez v4, :cond_0

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " killed"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v4, 0x9

    invoke-static {v3, v4}, Landroid/os/Process;->sendSignal(II)V

    goto :goto_0

    .line 167
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "waiting pid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to be background"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v2    # "oom_adj":[J
    .end local v3    # "pid":I
    :goto_0
    goto :goto_1

    .line 171
    :cond_1
    const-wide/16 v2, 0x0

    sput-wide v2, Landroid/widget/AbsListViewExtImpl;->constantEndFlingNum:J

    .line 173
    :cond_2
    :goto_1
    sput-wide v0, Landroid/widget/AbsListViewExtImpl;->lastEndFlingTime:J

    .line 175
    .end local v0    # "curTime":J
    :cond_3
    return-void
.end method

.method blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/widget/AbsListViewExtImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getFastScroller(Landroid/widget/AbsListView;I)Landroid/widget/FastScroller;
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "style"    # I

    .line 293
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->getViewExt()Landroid/view/IViewExt;

    move-result-object v0

    .line 294
    .local v0, "viewExtForFastScroller":Landroid/view/IViewExt;
    invoke-interface {v0}, Landroid/view/IViewExt;->isOplusOSStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    new-instance v1, Landroid/widget/OplusFastScroller;

    invoke-direct {v1, p1, p2}, Landroid/widget/OplusFastScroller;-><init>(Landroid/widget/AbsListView;I)V

    return-object v1

    .line 297
    :cond_0
    new-instance v1, Landroid/widget/FastScroller;

    invoke-direct {v1, p1, p2}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    return-object v1
.end method

.method public blacklist getOptHelperEnable()Z
    .locals 3

    .line 108
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/widget/IOplusScrollOptimizationHelper;->DEFAULT:Landroid/widget/IOplusScrollOptimizationHelper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/widget/IOplusScrollOptimizationHelper;

    invoke-interface {v0}, Landroid/widget/IOplusScrollOptimizationHelper;->enable()Z

    move-result v0

    return v0
.end method

.method public blacklist getOverFlingDistance(I)I
    .locals 1
    .param p1, "dist"    # I

    .line 104
    iget-object v0, p0, Landroid/widget/AbsListViewExtImpl;->mOplusViewConfigHelper:Landroid/view/IOplusViewConfigHelper;

    invoke-interface {v0, p1}, Landroid/view/IOplusViewConfigHelper;->getScaledOverflingDistance(I)I

    move-result v0

    return v0
.end method

.method public blacklist getOverScrollDistance(I)I
    .locals 1
    .param p1, "dist"    # I

    .line 100
    iget-object v0, p0, Landroid/widget/AbsListViewExtImpl;->mOplusViewConfigHelper:Landroid/view/IOplusViewConfigHelper;

    invoke-interface {v0, p1}, Landroid/view/IOplusViewConfigHelper;->getScaledOverscrollDistance(I)I

    move-result v0

    return v0
.end method

.method public blacklist getOverScroller(Landroid/content/Context;)Landroid/widget/OverScroller;
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .line 189
    iget-object v0, p0, Landroid/widget/AbsListViewExtImpl;->viewExt:Landroid/view/IViewExt;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/IViewExt;->isOplusOSStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    new-instance v0, Landroid/widget/SpringOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/SpringOverScroller;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "s":Landroid/widget/SpringOverScroller;
    iget v1, p0, Landroid/widget/AbsListViewExtImpl;->mFlingFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/SpringOverScroller;->setFlingFriction(F)V

    .line 194
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v1

    const-string v2, "oplus.software.list_optimize"

    invoke-virtual {v1, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 195
    const-string v2, "persist.sys.flingopts.enable"

    invoke-static {v2, v1}, Landroid/os/OplusSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget v1, p0, Landroid/widget/AbsListViewExtImpl;->mRealmeFlingFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/SpringOverScroller;->setFlingFriction(F)V

    .line 199
    :cond_0
    nop

    .line 200
    .local v0, "overScroller":Landroid/widget/OverScroller;
    goto :goto_0

    .line 201
    .end local v0    # "overScroller":Landroid/widget/OverScroller;
    :cond_1
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 203
    .restart local v0    # "overScroller":Landroid/widget/OverScroller;
    :goto_0
    return-object v0
.end method

.method public blacklist getScaledOverflingDistance(I)I
    .locals 1
    .param p1, "dist"    # I

    .line 64
    iget-boolean v0, p0, Landroid/widget/AbsListViewExtImpl;->mIsColorStyle:Z

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Landroid/widget/AbsListViewExtImpl;->mColorOverDist:I

    return v0

    .line 67
    :cond_0
    return p1
.end method

.method public blacklist getScaledOverscrollDistance(I)I
    .locals 3
    .param p1, "dist"    # I

    .line 54
    iget-boolean v0, p0, Landroid/widget/AbsListViewExtImpl;->mIsColorStyle:Z

    const-string v1, "TestOverScroll"

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScaledOverscrollDistance: a mColorOverDist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/widget/AbsListViewExtImpl;->mColorOverDist:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget v0, p0, Landroid/widget/AbsListViewExtImpl;->mColorOverDist:I

    return v0

    .line 58
    :cond_0
    const-string v0, "getScaledOverscrollDistance: b"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return p1
.end method

.method public blacklist getTouchMode()I
    .locals 1

    .line 230
    iget-object v0, p0, Landroid/widget/AbsListViewExtImpl;->mBase:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    return v0
.end method

.method public blacklist init(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "absListView"    # Landroid/widget/AbsListView;

    .line 131
    iput-object p1, p0, Landroid/widget/AbsListViewExtImpl;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/widget/AbsListViewExtImpl;->mColorOverDist:I

    .line 133
    invoke-static {p1}, Lcom/oplus/util/OplusContextUtil;->isOplusOSStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListViewExtImpl;->mIsColorStyle:Z

    .line 135
    invoke-virtual {p2}, Landroid/widget/AbsListView;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->getViewExt()Landroid/view/IViewExt;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListViewExtImpl;->viewExt:Landroid/view/IViewExt;

    .line 136
    iget v0, p2, Landroid/widget/AbsListView;->mOverscrollDistance:I

    invoke-virtual {p0, v0}, Landroid/widget/AbsListViewExtImpl;->getScaledOverscrollDistance(I)I

    move-result v0

    iput v0, p2, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 137
    iget v0, p2, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {p0, v0}, Landroid/widget/AbsListViewExtImpl;->getScaledOverflingDistance(I)I

    move-result v0

    iput v0, p2, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 138
    return-void
.end method

.method public blacklist initViewConfigHelper(Landroid/content/Context;ZZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "optHelperEnable"    # Z
    .param p3, "forceUsingSpring"    # Z

    .line 94
    sget-object v0, Landroid/view/IOplusViewConfigHelper;->DEFAULT:Landroid/view/IOplusViewConfigHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/IOplusViewConfigHelper;

    iput-object v0, p0, Landroid/widget/AbsListViewExtImpl;->mOplusViewConfigHelper:Landroid/view/IOplusViewConfigHelper;

    .line 95
    invoke-interface {v0, p2}, Landroid/view/IOplusViewConfigHelper;->setOptEnable(Z)V

    .line 96
    iget-object v0, p0, Landroid/widget/AbsListViewExtImpl;->mOplusViewConfigHelper:Landroid/view/IOplusViewConfigHelper;

    invoke-interface {v0, p3}, Landroid/view/IOplusViewConfigHelper;->setForceUsingSpring(Z)V

    .line 97
    return-void
.end method

.method public blacklist isSupportedStyle()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Landroid/widget/AbsListViewExtImpl;->mTopThirdPartApp:Z

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x0

    return v0

    .line 281
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListViewExtImpl;->viewExt:Landroid/view/IViewExt;

    invoke-interface {v0}, Landroid/view/IViewExt;->isOplusStyle()Z

    move-result v0

    return v0
.end method

.method public blacklist isSystemStyle()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Landroid/widget/AbsListViewExtImpl;->mTopThirdPartApp:Z

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListViewExtImpl;->viewExt:Landroid/view/IViewExt;

    invoke-interface {v0}, Landroid/view/IViewExt;->isOplusOSStyle()Z

    move-result v0

    return v0
.end method

.method public blacklist obtainViewHook()V
    .locals 14

    .line 303
    sget-object v0, Lcom/oplus/uifirst/IOplusUIFirstManager;->DEFAULT:Lcom/oplus/uifirst/IOplusUIFirstManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oplus/uifirst/IOplusUIFirstManager;

    .line 304
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 303
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xcb

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-interface/range {v1 .. v13}, Lcom/oplus/uifirst/IOplusUIFirstManager;->ofbBoostHint(IIIIIIJJJ)V

    .line 305
    return-void
.end method

.method public blacklist setFlingFriction(F)V
    .locals 0
    .param p1, "f"    # F

    .line 207
    iput p1, p0, Landroid/widget/AbsListViewExtImpl;->mFlingFriction:F

    .line 208
    return-void
.end method

.method public blacklist setFlingMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 211
    packed-switch p1, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong fling argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :pswitch_0
    goto :goto_0

    .line 213
    :pswitch_1
    const v0, 0x3f428f5c    # 0.76f

    invoke-virtual {p0, v0}, Landroid/widget/AbsListViewExtImpl;->setFlingFriction(F)V

    .line 214
    nop

    .line 221
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setTouchMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 240
    iget-object v0, p0, Landroid/widget/AbsListViewExtImpl;->mBase:Landroid/widget/AbsListView;

    iput p1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 241
    return-void
.end method

.method public blacklist startSpringback()V
    .locals 1

    .line 246
    iget-object v0, p0, Landroid/widget/AbsListViewExtImpl;->mBase:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWrapper()Landroid/widget/IAbsListViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/IAbsListViewWrapper;->getFlingRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/widget/AbsListViewExtImpl;->mBase:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWrapper()Landroid/widget/IAbsListViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/IAbsListViewWrapper;->setFlingRunnable()V

    .line 249
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListViewExtImpl;->mBase:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWrapper()Landroid/widget/IAbsListViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/IAbsListViewWrapper;->startSpringback()V

    .line 250
    return-void
.end method
