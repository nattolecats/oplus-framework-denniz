.class Lcom/android/internal/app/OplusResolverManager$2;
.super Ljava/lang/Object;
.source "OplusResolverManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OplusResolverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/OplusResolverManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/OplusResolverManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/OplusResolverManager;

    .line 915
    iput-object p1, p0, Lcom/android/internal/app/OplusResolverManager$2;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onConfigurationChanged$0$com-android-internal-app-OplusResolverManager$2()V
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$2;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$mupdatePreviewArea(Lcom/android/internal/app/OplusResolverManager;)V

    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/OplusBaseConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 918
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$2;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmResolverActivity(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/ResolverActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$2;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmResolverActivity(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/ResolverActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/OplusResolverManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/OplusResolverManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/OplusResolverManager$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$2;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmResolverDialogHelper(Lcom/android/internal/app/OplusResolverManager;)Lcom/oplus/resolver/OplusResolverDialogHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$2;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmResolverDialogHelper(Lcom/android/internal/app/OplusResolverManager;)Lcom/oplus/resolver/OplusResolverDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->clearDrawableCache()V

    .line 924
    :cond_1
    return-void
.end method

.method public whitelist onLowMemory()V
    .locals 0

    .line 929
    return-void
.end method
