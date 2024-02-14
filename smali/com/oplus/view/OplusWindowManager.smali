.class public final Lcom/oplus/view/OplusWindowManager;
.super Ljava/lang/Object;
.source "OplusWindowManager.java"

# interfaces
.implements Lcom/oplus/view/IOplusWindowManagerConstans;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/view/OplusWindowManager$LayoutParams;
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "OplusWindowManager"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist isColorLight(I)Z
    .locals 8
    .param p0, "color"    # I

    .line 286
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 287
    return v0

    .line 289
    :cond_0
    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x18

    .line 290
    .local v1, "alpha":I
    const/high16 v2, 0xff0000

    and-int/2addr v2, p0

    ushr-int/lit8 v2, v2, 0x10

    .line 291
    .local v2, "red":I
    const v3, 0xff00

    and-int/2addr v3, p0

    ushr-int/lit8 v3, v3, 0x8

    .line 292
    .local v3, "green":I
    and-int/lit16 v4, p0, 0xff

    .line 293
    .local v4, "blue":I
    int-to-float v5, v2

    const v6, 0x3e991687    # 0.299f

    mul-float/2addr v5, v6

    int-to-float v6, v3

    const v7, 0x3f1645a2    # 0.587f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    int-to-float v6, v4

    const v7, 0x3de978d5    # 0.114f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 294
    .local v5, "grayLevel":I
    const/16 v6, 0xc0

    if-le v5, v6, :cond_1

    const/16 v6, 0x9c

    if-le v1, v6, :cond_1

    .line 295
    const/4 v0, 0x1

    return v0

    .line 297
    :cond_1
    return v0
.end method

.method public static whitelist isInMultiWindowMode()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    const/4 v0, -0x1

    .line 271
    .local v0, "dockSide":I
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 274
    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 275
    :goto_0
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static whitelist isUseLastStatusBarTint(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 223
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->typeCast(Landroid/view/WindowManager$LayoutParams;)Landroid/view/OplusBaseLayoutParams;

    move-result-object v0

    .line 224
    .local v0, "cblp":Landroid/view/OplusBaseLayoutParams;
    if-eqz v0, :cond_0

    .line 225
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1}, Lcom/oplus/view/OplusLayoutParams;->isUseLastStatusBarTint()Z

    move-result v1

    return v1

    .line 227
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist setCustomSystemBar(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "value"    # Z

    .line 152
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->typeCast(Landroid/view/WindowManager$LayoutParams;)Landroid/view/OplusBaseLayoutParams;

    move-result-object v0

    .line 153
    .local v0, "cblp":Landroid/view/OplusBaseLayoutParams;
    if-eqz v0, :cond_0

    .line 154
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1, p1}, Lcom/oplus/view/OplusLayoutParams;->setCustomSystemBar(Z)V

    .line 156
    :cond_0
    return-void
.end method

.method public static whitelist setFullScreenWindow(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "value"    # Z

    .line 180
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->typeCast(Landroid/view/WindowManager$LayoutParams;)Landroid/view/OplusBaseLayoutParams;

    move-result-object v0

    .line 181
    .local v0, "cblp":Landroid/view/OplusBaseLayoutParams;
    if-eqz v0, :cond_0

    .line 182
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1, p1}, Lcom/oplus/view/OplusLayoutParams;->setFullScreenWindow(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public static whitelist setHasNavigationBar(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "value"    # Z

    .line 138
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->typeCast(Landroid/view/WindowManager$LayoutParams;)Landroid/view/OplusBaseLayoutParams;

    move-result-object v0

    .line 139
    .local v0, "cblp":Landroid/view/OplusBaseLayoutParams;
    if-eqz v0, :cond_0

    .line 140
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1, p1}, Lcom/oplus/view/OplusLayoutParams;->setHasNavigationBar(Z)V

    .line 142
    :cond_0
    return-void
.end method

.method public static whitelist setHasStatusBar(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "value"    # Z

    .line 124
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->typeCast(Landroid/view/WindowManager$LayoutParams;)Landroid/view/OplusBaseLayoutParams;

    move-result-object v0

    .line 125
    .local v0, "cblp":Landroid/view/OplusBaseLayoutParams;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1, p1}, Lcom/oplus/view/OplusLayoutParams;->setHasStatusBar(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public static whitelist setNavigationBarColor(Landroid/view/WindowManager$LayoutParams;IZ)V
    .locals 3
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "color"    # I
    .param p2, "update"    # Z

    .line 78
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->typeCast(Landroid/view/WindowManager$LayoutParams;)Landroid/view/OplusBaseLayoutParams;

    move-result-object v0

    .line 79
    .local v0, "cblp":Landroid/view/OplusBaseLayoutParams;
    if-eqz v0, :cond_2

    .line 80
    if-eqz p2, :cond_0

    .line 81
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1, p2}, Lcom/oplus/view/OplusLayoutParams;->setUpdateNavigationBar(Z)V

    .line 82
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1, p1}, Lcom/oplus/view/OplusLayoutParams;->setNavigationBarColor(I)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {p1}, Lcom/oplus/view/OplusWindowManager;->isColorLight(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget v1, v0, Landroid/view/OplusBaseLayoutParams;->navigationBarVisibility:I

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/OplusBaseLayoutParams;->navigationBarVisibility:I

    .line 85
    iput p1, v0, Landroid/view/OplusBaseLayoutParams;->navigationBarColor:I

    goto :goto_0

    .line 87
    :cond_1
    iget v1, v0, Landroid/view/OplusBaseLayoutParams;->navigationBarVisibility:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/OplusBaseLayoutParams;->navigationBarVisibility:I

    .line 88
    iput p1, v0, Landroid/view/OplusBaseLayoutParams;->navigationBarColor:I

    .line 91
    :cond_2
    :goto_0
    return-void
.end method

.method public static whitelist setNoMoveAnimation(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 1
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "noAnim"    # Z

    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 65
    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 67
    :goto_0
    return-void
.end method

.method public static whitelist setSkipSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "value"    # Z

    .line 209
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->typeCast(Landroid/view/WindowManager$LayoutParams;)Landroid/view/OplusBaseLayoutParams;

    move-result-object v0

    .line 210
    .local v0, "cblp":Landroid/view/OplusBaseLayoutParams;
    if-eqz v0, :cond_0

    .line 211
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1, p1}, Lcom/oplus/view/OplusLayoutParams;->setSkipSystemUiVisibility(Z)V

    .line 213
    :cond_0
    return-void
.end method

.method public static whitelist setSystemAppWindow(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "value"    # Z

    .line 166
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->typeCast(Landroid/view/WindowManager$LayoutParams;)Landroid/view/OplusBaseLayoutParams;

    move-result-object v0

    .line 167
    .local v0, "cblp":Landroid/view/OplusBaseLayoutParams;
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1, p1}, Lcom/oplus/view/OplusLayoutParams;->setSystemAppWindow(Z)V

    .line 170
    :cond_0
    return-void
.end method

.method public static whitelist setUseLastStatusBarTint(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "value"    # Z

    .line 238
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->typeCast(Landroid/view/WindowManager$LayoutParams;)Landroid/view/OplusBaseLayoutParams;

    move-result-object v0

    .line 239
    .local v0, "cblp":Landroid/view/OplusBaseLayoutParams;
    if-eqz v0, :cond_0

    .line 240
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1, p1}, Lcom/oplus/view/OplusLayoutParams;->setUseLastStatusBarTint(Z)V

    .line 242
    :cond_0
    return-void
.end method

.method public static whitelist skipSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 194
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->typeCast(Landroid/view/WindowManager$LayoutParams;)Landroid/view/OplusBaseLayoutParams;

    move-result-object v0

    .line 195
    .local v0, "cblp":Landroid/view/OplusBaseLayoutParams;
    if-eqz v0, :cond_0

    .line 196
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1}, Lcom/oplus/view/OplusLayoutParams;->getSkipSystemUiVisibility()Z

    move-result v1

    return v1

    .line 198
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist syncSurfaceTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/View;)V
    .locals 4
    .param p0, "mergeTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "view"    # Landroid/view/View;

    .line 310
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {v0, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    .line 311
    .local v0, "applier":Landroid/view/SyncRtSurfaceTransactionApplier;
    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v1, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 312
    invoke-virtual {v1, p0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v1

    .line 314
    .local v1, "params":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 315
    return-void
.end method

.method private static blacklist typeCast(Landroid/view/WindowManager$LayoutParams;)Landroid/view/OplusBaseLayoutParams;
    .locals 1
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 328
    const-class v0, Landroid/view/OplusBaseLayoutParams;

    invoke-static {v0, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/OplusBaseLayoutParams;

    return-object v0
.end method

.method public static whitelist updateDarkNavigationBar(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 101
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->typeCast(Landroid/view/WindowManager$LayoutParams;)Landroid/view/OplusBaseLayoutParams;

    move-result-object v0

    .line 102
    .local v0, "cblp":Landroid/view/OplusBaseLayoutParams;
    if-eqz v0, :cond_2

    .line 103
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1}, Lcom/oplus/view/OplusLayoutParams;->hasNavigationBar()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 104
    return v2

    .line 106
    :cond_0
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1}, Lcom/oplus/view/OplusLayoutParams;->isUpdateNavigationBar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    return v2

    .line 109
    :cond_1
    iget-object v1, v0, Landroid/view/OplusBaseLayoutParams;->mOplusLayoutParams:Lcom/oplus/view/OplusLayoutParams;

    invoke-virtual {v1}, Lcom/oplus/view/OplusLayoutParams;->getNavigationBarColor()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/view/OplusWindowManager;->isColorLight(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    return v2

    .line 113
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist updateSpecialSystemBar(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 252
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->isUseLastStatusBarTint(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 253
    return v1

    .line 255
    :cond_0
    invoke-static {p0}, Lcom/oplus/view/OplusWindowManager;->updateDarkNavigationBar(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    return v1

    .line 258
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
