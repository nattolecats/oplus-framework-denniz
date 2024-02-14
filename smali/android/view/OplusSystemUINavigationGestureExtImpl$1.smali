.class Landroid/view/OplusSystemUINavigationGestureExtImpl$1;
.super Landroid/database/ContentObserver;
.source "OplusSystemUINavigationGestureExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/OplusSystemUINavigationGestureExtImpl;->registerSmartSideBarRegion(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/OplusSystemUINavigationGestureExtImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/OplusSystemUINavigationGestureExtImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/OplusSystemUINavigationGestureExtImpl;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 42
    iput-object p1, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl$1;->this$0:Landroid/view/OplusSystemUINavigationGestureExtImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 45
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl$1;->this$0:Landroid/view/OplusSystemUINavigationGestureExtImpl;

    invoke-static {v0}, Landroid/view/OplusSystemUINavigationGestureExtImpl;->-$$Nest$mupdateSideBarSceneRegion(Landroid/view/OplusSystemUINavigationGestureExtImpl;)V

    .line 46
    return-void
.end method
