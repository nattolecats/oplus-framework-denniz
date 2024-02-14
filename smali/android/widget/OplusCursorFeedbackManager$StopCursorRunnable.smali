.class Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;
.super Ljava/lang/Object;
.source "OplusCursorFeedbackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OplusCursorFeedbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopCursorRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/OplusCursorFeedbackManager;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/OplusCursorFeedbackManager;)V
    .locals 0

    .line 570
    iput-object p1, p0, Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/OplusCursorFeedbackManager;Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;-><init>(Landroid/widget/OplusCursorFeedbackManager;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 573
    iget-object v0, p0, Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    invoke-static {v0}, Landroid/widget/OplusCursorFeedbackManager;->-$$Nest$fgetmEditorRef(Landroid/widget/OplusCursorFeedbackManager;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Landroid/widget/OplusCursorFeedbackManager$StopCursorRunnable;->this$0:Landroid/widget/OplusCursorFeedbackManager;

    invoke-static {v0}, Landroid/widget/OplusCursorFeedbackManager;->-$$Nest$fgetmEditorRef(Landroid/widget/OplusCursorFeedbackManager;)Ljava/lang/ref/SoftReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Editor;

    invoke-virtual {v0, v1}, Landroid/widget/OplusCursorFeedbackManager;->stopCursorAnimator(Landroid/widget/Editor;)V

    .line 576
    :cond_0
    return-void
.end method
