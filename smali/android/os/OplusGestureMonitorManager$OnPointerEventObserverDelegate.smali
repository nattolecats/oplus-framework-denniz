.class Landroid/os/OplusGestureMonitorManager$OnPointerEventObserverDelegate;
.super Landroid/os/IOplusExInputCallBack$Stub;
.source "OplusGestureMonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusGestureMonitorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPointerEventObserverDelegate"
.end annotation


# instance fields
.field private blacklist mObserver:Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;

.field final synthetic blacklist this$0:Landroid/os/OplusGestureMonitorManager;


# direct methods
.method public constructor blacklist <init>(Landroid/os/OplusGestureMonitorManager;Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;)V
    .locals 1
    .param p2, "observer"    # Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;

    .line 279
    iput-object p1, p0, Landroid/os/OplusGestureMonitorManager$OnPointerEventObserverDelegate;->this$0:Landroid/os/OplusGestureMonitorManager;

    invoke-direct {p0}, Landroid/os/IOplusExInputCallBack$Stub;-><init>()V

    .line 280
    sget-boolean p1, Landroid/os/OplusGestureMonitorManager;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 281
    const-string p1, "Binder"

    const-string v0, "new OnPointerEventObserverDelegate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iput-object p2, p0, Landroid/os/OplusGestureMonitorManager$OnPointerEventObserverDelegate;->mObserver:Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;

    .line 284
    return-void
.end method


# virtual methods
.method public whitelist onInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 288
    iget-object v0, p0, Landroid/os/OplusGestureMonitorManager$OnPointerEventObserverDelegate;->mObserver:Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;

    invoke-interface {v0, p1}, Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;->onInputEvent(Landroid/view/InputEvent;)V

    .line 289
    return-void
.end method
