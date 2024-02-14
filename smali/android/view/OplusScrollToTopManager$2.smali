.class Landroid/view/OplusScrollToTopManager$2;
.super Landroid/content/BroadcastReceiver;
.source "OplusScrollToTopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusScrollToTopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/OplusScrollToTopManager;


# direct methods
.method constructor blacklist <init>(Landroid/view/OplusScrollToTopManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/OplusScrollToTopManager;

    .line 109
    iput-object p1, p0, Landroid/view/OplusScrollToTopManager$2;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager$2;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v0}, Landroid/view/OplusScrollToTopManager;->-$$Nest$mgetTopScrollableChild(Landroid/view/OplusScrollToTopManager;)V

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/OplusScrollToTopManager$2;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v1}, Landroid/view/OplusScrollToTopManager;->-$$Nest$fgetmScrollableViews(Landroid/view/OplusScrollToTopManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Landroid/view/OplusScrollToTopManager$2;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v1}, Landroid/view/OplusScrollToTopManager;->-$$Nest$fgetmScrollableViews(Landroid/view/OplusScrollToTopManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 116
    .local v1, "scrollTarget":Landroid/view/View;
    iget-object v2, p0, Landroid/view/OplusScrollToTopManager$2;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v2, v1}, Landroid/view/OplusScrollToTopManager;->-$$Nest$mreflectSmoothScrollForScrollableView(Landroid/view/OplusScrollToTopManager;Landroid/view/View;)Z

    move-result v2

    .line 118
    .local v2, "reflectSucceed":Z
    if-nez v2, :cond_0

    .line 119
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/view/View;->scrollTo(II)V

    .line 122
    :cond_0
    iget-object v3, p0, Landroid/view/OplusScrollToTopManager$2;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v3, p1}, Landroid/view/OplusScrollToTopManager;->-$$Nest$mdismissPopup(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;)V

    .line 114
    .end local v1    # "scrollTarget":Landroid/view/View;
    .end local v2    # "reflectSucceed":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
