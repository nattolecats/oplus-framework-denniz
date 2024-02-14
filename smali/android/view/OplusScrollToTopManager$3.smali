.class Landroid/view/OplusScrollToTopManager$3;
.super Ljava/lang/Object;
.source "OplusScrollToTopManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/OplusScrollToTopManager;->initHandlerAndRunnable()V
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

    .line 135
    iput-object p1, p0, Landroid/view/OplusScrollToTopManager$3;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 138
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager$3;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v0}, Landroid/view/OplusScrollToTopManager;->-$$Nest$fgetmView(Landroid/view/OplusScrollToTopManager;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/OplusScrollToTopManager;->-$$Nest$mneedShowPopup(Landroid/view/OplusScrollToTopManager;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager$3;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v0}, Landroid/view/OplusScrollToTopManager;->-$$Nest$mgetTopScrollableChild(Landroid/view/OplusScrollToTopManager;)V

    .line 144
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager$3;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v0}, Landroid/view/OplusScrollToTopManager;->-$$Nest$fgetmScrollableViews(Landroid/view/OplusScrollToTopManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 145
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager$3;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v0}, Landroid/view/OplusScrollToTopManager;->-$$Nest$fgetmView(Landroid/view/OplusScrollToTopManager;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/OplusScrollToTopManager;->-$$Nest$mshowGuidePopup(Landroid/view/OplusScrollToTopManager;Landroid/view/View;)V

    .line 147
    :cond_1
    return-void
.end method
