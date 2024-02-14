.class public interface abstract Landroid/view/performance/IOplusAdjustlayerType;
.super Ljava/lang/Object;
.source "IOplusAdjustlayerType.java"


# static fields
.field public static final blacklist DEFAULT:Landroid/view/performance/IOplusAdjustlayerType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Landroid/view/performance/IOplusAdjustlayerType$1;

    invoke-direct {v0}, Landroid/view/performance/IOplusAdjustlayerType$1;-><init>()V

    sput-object v0, Landroid/view/performance/IOplusAdjustlayerType;->DEFAULT:Landroid/view/performance/IOplusAdjustlayerType;

    return-void
.end method


# virtual methods
.method public blacklist adjustImageViewLayerType(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 17
    return-void
.end method

.method public blacklist adjustPendingLayertype(I)V
    .locals 0
    .param p1, "layerType"    # I

    .line 19
    return-void
.end method

.method public blacklist checkMutiTouchView()Z
    .locals 1

    .line 18
    const/4 v0, 0x0

    return v0
.end method
