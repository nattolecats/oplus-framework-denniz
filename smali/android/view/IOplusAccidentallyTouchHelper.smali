.class public interface abstract Landroid/view/IOplusAccidentallyTouchHelper;
.super Ljava/lang/Object;
.source "IOplusAccidentallyTouchHelper.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Landroid/view/IOplusAccidentallyTouchHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/view/IOplusAccidentallyTouchHelper$1;

    invoke-direct {v0}, Landroid/view/IOplusAccidentallyTouchHelper$1;-><init>()V

    sput-object v0, Landroid/view/IOplusAccidentallyTouchHelper;->DEFAULT:Landroid/view/IOplusAccidentallyTouchHelper;

    return-void
.end method


# virtual methods
.method public blacklist getAccidentallyTouchData()Lcom/oplus/util/OplusAccidentallyTouchData;
    .locals 1

    .line 52
    new-instance v0, Lcom/oplus/util/OplusAccidentallyTouchData;

    invoke-direct {v0}, Lcom/oplus/util/OplusAccidentallyTouchData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 29
    invoke-interface {p0}, Landroid/view/IOplusAccidentallyTouchHelper;->getDefault()Landroid/view/IOplusAccidentallyTouchHelper;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefault()Landroid/view/IOplusAccidentallyTouchHelper;
    .locals 1

    .line 36
    sget-object v0, Landroid/view/IOplusAccidentallyTouchHelper;->DEFAULT:Landroid/view/IOplusAccidentallyTouchHelper;

    return-object v0
.end method

.method public whitelist getEdgeEnable()Z
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEdgeT1()I
    .locals 1

    .line 72
    const/16 v0, 0xa

    return v0
.end method

.method public whitelist getEdgeT2()I
    .locals 1

    .line 76
    const/16 v0, 0x1e

    return v0
.end method

.method public whitelist getOriEdgeT1()I
    .locals 1

    .line 80
    const/16 v0, 0xa

    return v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 41
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusAccidentallyTouchHelper:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist initData(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    return-void
.end method

.method public whitelist initOnAmsReady()V
    .locals 0

    .line 46
    return-void
.end method

.method public whitelist updataeAccidentPreventionState(Landroid/content/Context;ZI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enable"    # Z
    .param p3, "rotation"    # I

    .line 61
    return-void
.end method

.method public whitelist updatePointerEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/content/res/Configuration;)Landroid/view/MotionEvent;
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mView"    # Landroid/view/View;
    .param p3, "mLastConfiguration"    # Landroid/content/res/Configuration;

    .line 56
    return-object p1
.end method
