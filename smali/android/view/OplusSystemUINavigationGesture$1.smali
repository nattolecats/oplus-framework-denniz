.class Landroid/view/OplusSystemUINavigationGesture$1;
.super Landroid/database/ContentObserver;
.source "OplusSystemUINavigationGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/OplusSystemUINavigationGesture;->registerNavGestureListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/OplusSystemUINavigationGesture;


# direct methods
.method constructor blacklist <init>(Landroid/view/OplusSystemUINavigationGesture;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/OplusSystemUINavigationGesture;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 128
    iput-object p1, p0, Landroid/view/OplusSystemUINavigationGesture$1;->this$0:Landroid/view/OplusSystemUINavigationGesture;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 131
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture$1;->this$0:Landroid/view/OplusSystemUINavigationGesture;

    invoke-static {v0}, Landroid/view/OplusSystemUINavigationGesture;->-$$Nest$mupdateSideGestureAreaWidth(Landroid/view/OplusSystemUINavigationGesture;)V

    .line 132
    return-void
.end method
