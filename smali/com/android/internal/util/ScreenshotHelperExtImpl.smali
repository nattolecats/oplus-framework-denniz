.class public Lcom/android/internal/util/ScreenshotHelperExtImpl;
.super Ljava/lang/Object;
.source "ScreenshotHelperExtImpl.java"

# interfaces
.implements Lcom/android/internal/util/IScreenshotHelperExt;


# instance fields
.field private final blacklist mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v0, p1

    check-cast v0, Lcom/android/internal/util/ScreenshotHelper;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelperExtImpl;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist takeScreenshotNeedReturn(Landroid/content/Context;ILcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Landroid/os/Handler;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenshotType"    # I
    .param p3, "screenshotRequest"    # Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 27
    sget-object v0, Lcom/oplus/screenshot/IOplusScreenShotEuclidManager;->DEFAULT:Lcom/oplus/screenshot/IOplusScreenShotEuclidManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/oplus/screenshot/IOplusScreenShotEuclidManager;

    .line 28
    invoke-virtual {p3}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->getHasStatusBar()Z

    move-result v4

    .line 29
    invoke-virtual {p3}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->getHasNavBar()Z

    move-result v5

    .line 28
    move-object v2, p1

    move v3, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/oplus/screenshot/IOplusScreenShotEuclidManager;->takeScreenshot(Landroid/content/Context;IZZLandroid/os/Handler;)Z

    move-result v0

    .line 27
    return v0
.end method
