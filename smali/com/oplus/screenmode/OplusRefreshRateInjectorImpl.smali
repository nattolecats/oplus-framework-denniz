.class public Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;
.super Lcom/oplus/screenmode/OplusRefreshRateInjector;
.source "OplusRefreshRateInjectorImpl.java"


# static fields
.field public static final blacklist DEBUG:Z

.field private static final blacklist FACTOR_FILTER:F = 0.6f

.field private static final blacklist REFRESH_RATE_60:I = 0x2

.field private static blacklist sDisableOverrideViewList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mOverrideRefreshRateId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 37
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->DEBUG:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->sDisableOverrideViewList:Landroid/util/ArraySet;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/oplus/screenmode/OplusRefreshRateInjector;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->mOverrideRefreshRateId:I

    .line 45
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/oplus/screenmode/OplusRefreshRateInjector;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->mOverrideRefreshRateId:I

    .line 48
    sget-object v0, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->sDisableOverrideViewList:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 49
    invoke-static {p1}, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->getDisableOverrideViewList(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->sDisableOverrideViewList:Landroid/util/ArraySet;

    .line 51
    :cond_0
    return-void
.end method

.method private blacklist disableViewOverride(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->sDisableOverrideViewList:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    const-string v1, "All"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->sDisableOverrideViewList:Landroid/util/ArraySet;

    .line 161
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0
.end method

.method public static blacklist enterPSMode(Z)V
    .locals 1
    .param p0, "enter"    # Z

    .line 165
    invoke-static {}, Lcom/oplus/screenmode/OplusDisplayModeManager;->getInstance()Lcom/oplus/screenmode/OplusDisplayModeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/screenmode/OplusDisplayModeManager;->enterPSMode(Z)V

    .line 166
    return-void
.end method

.method public static blacklist enterPSModeOnRate(ZI)V
    .locals 1
    .param p0, "enter"    # Z
    .param p1, "rate"    # I

    .line 169
    invoke-static {}, Lcom/oplus/screenmode/OplusDisplayModeManager;->getInstance()Lcom/oplus/screenmode/OplusDisplayModeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/screenmode/OplusDisplayModeManager;->enterPSModeOnRate(ZI)V

    .line 170
    return-void
.end method

.method private blacklist getAreaThreshold(IIZ)I
    .locals 2
    .param p1, "windowW"    # I
    .param p2, "windowH"    # I
    .param p3, "isLandscape"    # Z

    .line 151
    if-eqz p3, :cond_0

    .line 152
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 153
    .local v0, "shortSide":I
    mul-int v1, v0, v0

    return v1

    .line 155
    .end local v0    # "shortSide":I
    :cond_0
    mul-int v0, p1, p2

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static blacklist getDisableOverrideViewList(Landroid/content/Context;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getRefreshRateId(Landroid/view/ViewGroup;I)I
    .locals 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "threshold"    # I

    .line 106
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 108
    .local v0, "needCheck":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->getRefreshRateIdFromView(Landroid/view/View;I)I

    move-result v2

    .line 110
    .local v2, "rateId":I
    if-eqz v2, :cond_1

    .line 111
    return v2

    .line 113
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 114
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 115
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 116
    .local v5, "child":Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 117
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {p0, v6, p2}, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->getRefreshRateId(Landroid/view/ViewGroup;I)I

    move-result v2

    goto :goto_2

    .line 119
    :cond_2
    invoke-direct {p0, v5, p2}, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->getRefreshRateIdFromView(Landroid/view/View;I)I

    move-result v2

    .line 121
    :goto_2
    if-eqz v2, :cond_3

    .line 122
    return v2

    .line 114
    .end local v5    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 126
    .end local v2    # "rateId":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_4
    return v1
.end method

.method private blacklist getRefreshRateIdFromView(Landroid/view/View;I)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "threshold"    # I

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 141
    invoke-direct {p0, p1}, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->surfaceViewAvailable(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    if-lt v0, p2, :cond_1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->disableViewOverride(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 144
    .local v0, "useLowRate":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-boolean v2, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request low refresh rate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RefreshRateInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x2

    :cond_3
    return v1
.end method

.method private static blacklist parseOverrideViewList(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 3
    .param p0, "viewList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 57
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "strs":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-object v0

    .line 62
    .end local v0    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "strs":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist surfaceViewAvailable(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 130
    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 131
    move-object v0, p1

    check-cast v0, Landroid/view/SurfaceView;

    .line 132
    .local v0, "surfaceV":Landroid/view/SurfaceView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->isZOrderedOnTop()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const/4 v1, 0x1

    return v1

    .line 136
    .end local v0    # "surfaceV":Landroid/view/SurfaceView;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist setHighTemperatureStatus(II)Z
    .locals 1
    .param p1, "status"    # I
    .param p2, "rate"    # I

    .line 174
    invoke-static {}, Lcom/oplus/screenmode/OplusDisplayModeManager;->getInstance()Lcom/oplus/screenmode/OplusDisplayModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/screenmode/OplusDisplayModeManager;->setHighTemperatureStatus(II)Z

    move-result v0

    return v0
.end method

.method public blacklist setRefreshRateIfNeed(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "rateId":I
    const-wide/16 v1, 0x8

    const-string v3, "setRefreshRateIfNeed"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 83
    :try_start_0
    instance-of v3, p2, Lcom/android/internal/view/RootViewSurfaceTaker;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 85
    move-object v3, p2

    check-cast v3, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 86
    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    move v0, v3

    .line 89
    :cond_1
    if-nez v0, :cond_3

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/OplusBaseConfiguration;->orientation:I

    if-ne v3, v4, :cond_2

    const/4 v5, 0x1

    :cond_2
    move v3, v5

    .line 91
    .local v3, "isLandscape":Z
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, v3}, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->getAreaThreshold(IIZ)I

    move-result v4

    .line 92
    .local v4, "threshold":I
    invoke-direct {p0, p2, v4}, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->getRefreshRateId(Landroid/view/ViewGroup;I)I

    move-result v5

    move v0, v5

    .line 94
    .end local v3    # "isLandscape":Z
    .end local v4    # "threshold":I
    :cond_3
    iget v3, p0, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->mOverrideRefreshRateId:I

    if-eq v3, v0, :cond_4

    .line 95
    invoke-static {}, Lcom/oplus/screenmode/OplusDisplayModeManager;->getInstance()Lcom/oplus/screenmode/OplusDisplayModeManager;

    move-result-object v3

    invoke-virtual {v3, p3, v0}, Lcom/oplus/screenmode/OplusDisplayModeManager;->overrideWindowRefreshRate(Landroid/os/IBinder;I)V

    .line 96
    iput v0, p0, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->mOverrideRefreshRateId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 101
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 102
    throw v3

    .line 98
    :catch_0
    move-exception v3

    .line 101
    :cond_4
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 102
    nop

    .line 103
    return-void
.end method
