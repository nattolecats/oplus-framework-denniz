.class public Landroid/widget/OplusOverScrollerHelper;
.super Ljava/lang/Object;
.source "OplusOverScrollerHelper.java"

# interfaces
.implements Landroid/widget/IOplusOverScrollerHelper;


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "OplusOverScrollerHelper"

.field private static blacklist sOptEnable:Z


# instance fields
.field private blacklist mForSpringOverScroller:Z

.field protected whitelist mScroller:Landroid/widget/OverScroller;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 30
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/widget/OplusOverScrollerHelper;->DEBUG:Z

    .line 32
    sput-boolean v1, Landroid/widget/OplusOverScrollerHelper;->sOptEnable:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/OverScroller;)V
    .locals 1
    .param p1, "overScroller"    # Landroid/widget/OverScroller;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/widget/OplusOverScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    .line 38
    instance-of v0, p1, Landroid/widget/SpringOverScroller;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/OplusOverScrollerHelper;->sOptEnable:Z

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OplusOverScrollerHelper;->mForSpringOverScroller:Z

    .line 41
    :cond_0
    return-void
.end method

.method public static whitelist logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 44
    const-string v0, "OplusOverScrollerHelper"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist getCurrX(I)I
    .locals 1
    .param p1, "x"    # I

    .line 77
    iget-boolean v0, p0, Landroid/widget/OplusOverScrollerHelper;->mForSpringOverScroller:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/widget/OplusOverScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->getOplusCurrX()I

    move-result v0

    .local v0, "result":I
    goto :goto_0

    .line 80
    .end local v0    # "result":I
    :cond_0
    move v0, p1

    .line 82
    .restart local v0    # "result":I
    :goto_0
    return v0
.end method

.method public whitelist getCurrY(I)I
    .locals 1
    .param p1, "y"    # I

    .line 88
    iget-boolean v0, p0, Landroid/widget/OplusOverScrollerHelper;->mForSpringOverScroller:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/widget/OplusOverScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->getOplusCurrY()I

    move-result v0

    .local v0, "result":I
    goto :goto_0

    .line 91
    .end local v0    # "result":I
    :cond_0
    move v0, p1

    .line 93
    .restart local v0    # "result":I
    :goto_0
    return v0
.end method

.method public whitelist getFinalX(I)I
    .locals 1
    .param p1, "x"    # I

    .line 55
    iget-boolean v0, p0, Landroid/widget/OplusOverScrollerHelper;->mForSpringOverScroller:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Landroid/widget/OplusOverScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->getOplusFinalX()I

    move-result v0

    .local v0, "result":I
    goto :goto_0

    .line 58
    .end local v0    # "result":I
    :cond_0
    move v0, p1

    .line 60
    .restart local v0    # "result":I
    :goto_0
    return v0
.end method

.method public whitelist getFinalY(I)I
    .locals 1
    .param p1, "y"    # I

    .line 66
    iget-boolean v0, p0, Landroid/widget/OplusOverScrollerHelper;->mForSpringOverScroller:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Landroid/widget/OplusOverScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->getOplusFinalY()I

    move-result v0

    .local v0, "result":I
    goto :goto_0

    .line 69
    .end local v0    # "result":I
    :cond_0
    move v0, p1

    .line 71
    .restart local v0    # "result":I
    :goto_0
    return v0
.end method

.method public whitelist isFinished(Z)Z
    .locals 1
    .param p1, "finished"    # Z

    .line 109
    iget-boolean v0, p0, Landroid/widget/OplusOverScrollerHelper;->mForSpringOverScroller:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/widget/OplusOverScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0}, Landroid/widget/SpringOverScroller;->isOplusFinished()Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 112
    .end local v0    # "result":Z
    :cond_0
    move v0, p1

    .line 114
    .restart local v0    # "result":Z
    :goto_0
    return v0
.end method

.method public whitelist isForSpringOverScroller()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Landroid/widget/OplusOverScrollerHelper;->mForSpringOverScroller:Z

    return v0
.end method

.method public whitelist isForceUsingSpring(Landroid/content/Context;Z)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "optHelperEnable"    # Z

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "gallery3d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    return v1

    .line 124
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "spring_overscroller_package_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "packageList":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 126
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "subString":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 129
    .local v6, "isInList":Z
    const-string v7, "disable.all.spring"

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 130
    return v1

    .line 132
    :cond_1
    sget-boolean v7, Landroid/widget/OplusOverScrollerHelper;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v6, :cond_2

    const-string v8, " is in packageList"

    goto :goto_0

    :cond_2
    const-string v8, " is not in packageList"

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/widget/OplusOverScrollerHelper;->logD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_3
    if-nez v6, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 139
    .end local v3    # "packageList":Ljava/lang/String;
    .end local v4    # "subString":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "isInList":Z
    :cond_5
    goto :goto_1

    .line 137
    :catchall_0
    move-exception v1

    .line 138
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/OplusOverScrollerHelper;->logD(Ljava/lang/String;)V

    .line 140
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return v2
.end method

.method public whitelist setFriction(F)Z
    .locals 1
    .param p1, "friction"    # F

    .line 98
    iget-boolean v0, p0, Landroid/widget/OplusOverScrollerHelper;->mForSpringOverScroller:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/widget/OplusOverScrollerHelper;->mScroller:Landroid/widget/OverScroller;

    check-cast v0, Landroid/widget/SpringOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SpringOverScroller;->setFlingFriction(F)V

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setOptEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 49
    sput-boolean p1, Landroid/widget/OplusOverScrollerHelper;->sOptEnable:Z

    .line 50
    return-void
.end method
