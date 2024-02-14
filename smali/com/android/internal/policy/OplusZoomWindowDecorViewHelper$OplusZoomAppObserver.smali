.class Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;
.super Lcom/oplus/zoomwindow/IOplusZoomAppObserver$Stub;
.source "OplusZoomWindowDecorViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OplusZoomAppObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;->this$0:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    invoke-direct {p0}, Lcom/oplus/zoomwindow/IOplusZoomAppObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;-><init>(Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$notifyDecorationChange$0$com-android-internal-policy-OplusZoomWindowDecorViewHelper$OplusZoomAppObserver(I)V
    .locals 1
    .param p1, "type"    # I

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;->this$0:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    invoke-static {v0, p1}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->-$$Nest$mprocessZoomDecorationChange(Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;I)V

    return-void
.end method

.method public whitelist notifyControlViewChange(Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    .line 371
    return-void
.end method

.method public whitelist notifyDecorationChange(I)V
    .locals 2
    .param p1, "type"    # I

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDecorationChange, window = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;->this$0:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    invoke-static {v1}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->-$$Nest$fgetmWindow(Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomWindowDecorView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;->this$0:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    invoke-static {v0}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->-$$Nest$fgetmMainHandler(Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    return-void
.end method

.method public whitelist notifyShowCompatibilityToast(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "callPkg"    # Ljava/lang/String;
    .param p5, "extension"    # Landroid/os/Bundle;

    .line 377
    return-void
.end method
