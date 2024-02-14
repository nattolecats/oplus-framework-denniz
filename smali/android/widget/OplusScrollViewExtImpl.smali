.class public Landroid/widget/OplusScrollViewExtImpl;
.super Ljava/lang/Object;
.source "OplusScrollViewExtImpl.java"

# interfaces
.implements Landroid/widget/IOplusScrollViewExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ScrollView"

.field private static blacklist sForceUsingSpring:Z

.field private static blacklist sOptHelperEnable:Z


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 30
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

    sput-boolean v0, Landroid/widget/OplusScrollViewExtImpl;->sOptHelperEnable:Z

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist isOplusOSStyle()Z
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/widget/OplusScrollViewExtImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/util/OplusContextUtil;->isOplusOSStyle(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist canFling(Z)Z
    .locals 1
    .param p1, "canFling"    # Z

    .line 53
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/widget/OplusScrollViewExtImpl;->isOplusOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist createSpringOverScrollerInstance(Landroid/content/Context;)Landroid/widget/OverScroller;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    iput-object p1, p0, Landroid/widget/OplusScrollViewExtImpl;->mContext:Landroid/content/Context;

    .line 41
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/widget/SpringOverScroller;->newInstance(Landroid/content/Context;Z)Landroid/widget/OverScroller;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookInitScrollView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    iput-object p1, p0, Landroid/widget/OplusScrollViewExtImpl;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "spring_overscroller_package_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "packageList":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Landroid/widget/OplusScrollViewExtImpl;->sForceUsingSpring:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v1    # "packageList":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScrollView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 84
    return-void
.end method

.method public blacklist onOverScrolled(Landroid/widget/OverScroller;III)V
    .locals 8
    .param p1, "scroller"    # Landroid/widget/OverScroller;
    .param p2, "scrollRange"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 46
    invoke-direct {p0}, Landroid/widget/OplusScrollViewExtImpl;->isOplusOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 49
    :cond_0
    return-void
.end method

.method public blacklist shouldDisplayEdgeEffects(Z)Z
    .locals 1
    .param p1, "shouldDisplay"    # Z

    .line 58
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/OplusScrollViewExtImpl;->isOplusOSStyle()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
