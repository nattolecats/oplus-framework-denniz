.class Landroid/app/dialog/AlertControllerExt$3;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/dialog/AlertControllerExt;->setupContent(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/dialog/AlertControllerExt;

.field final synthetic blacklist val$contentPanel:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/app/dialog/AlertControllerExt;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/dialog/AlertControllerExt;

    .line 206
    iput-object p1, p0, Landroid/app/dialog/AlertControllerExt$3;->this$0:Landroid/app/dialog/AlertControllerExt;

    iput-object p2, p0, Landroid/app/dialog/AlertControllerExt$3;->val$contentPanel:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 210
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 214
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt$3;->val$contentPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 215
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt$3;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v0}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmComponentCallbacks(Landroid/app/dialog/AlertControllerExt;)Landroid/content/ComponentCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt$3;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v0}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmContext(Landroid/app/dialog/AlertControllerExt;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt$3;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v1}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmComponentCallbacks(Landroid/app/dialog/AlertControllerExt;)Landroid/content/ComponentCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 217
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt$3;->this$0:Landroid/app/dialog/AlertControllerExt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fputmComponentCallbacks(Landroid/app/dialog/AlertControllerExt;Landroid/content/ComponentCallbacks;)V

    .line 219
    :cond_0
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt$3;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v0}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmContext(Landroid/app/dialog/AlertControllerExt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt$3;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v1}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmObserver(Landroid/app/dialog/AlertControllerExt;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 220
    return-void
.end method
