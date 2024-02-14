.class public interface abstract Landroid/view/IOplusSystemUINavigationGesture;
.super Ljava/lang/Object;
.source "IOplusSystemUINavigationGesture.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/view/IOplusSystemUINavigationGesture;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroid/view/IOplusSystemUINavigationGesture$1;

    invoke-direct {v0}, Landroid/view/IOplusSystemUINavigationGesture$1;-><init>()V

    sput-object v0, Landroid/view/IOplusSystemUINavigationGesture;->DEFAULT:Landroid/view/IOplusSystemUINavigationGesture;

    return-void
.end method


# virtual methods
.method public blacklist checkKeyguardAndConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 27
    return-void
.end method

.method public blacklist handleGestureConfigCheck()V
    .locals 0

    .line 33
    return-void
.end method

.method public blacklist handleGestureMotionDown(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 30
    return-void
.end method

.method public blacklist processGestureEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSystemGestureExclusionRegion(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    return-void
.end method

.method public blacklist unRegisterNavGestureListener()V
    .locals 0

    .line 43
    return-void
.end method
