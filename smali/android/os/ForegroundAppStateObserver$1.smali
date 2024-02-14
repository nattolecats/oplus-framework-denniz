.class Landroid/os/ForegroundAppStateObserver$1;
.super Ljava/lang/Object;
.source "ForegroundAppStateObserver.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/ForegroundAppStateObserver;->registerLifecycleCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/ForegroundAppStateObserver;


# direct methods
.method constructor blacklist <init>(Landroid/os/ForegroundAppStateObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/ForegroundAppStateObserver;

    .line 79
    iput-object p1, p0, Landroid/os/ForegroundAppStateObserver$1;->this$0:Landroid/os/ForegroundAppStateObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onActivityPaused$1$android-os-ForegroundAppStateObserver$1()V
    .locals 1

    .line 104
    iget-object v0, p0, Landroid/os/ForegroundAppStateObserver$1;->this$0:Landroid/os/ForegroundAppStateObserver;

    invoke-static {v0}, Landroid/os/ForegroundAppStateObserver;->-$$Nest$mnotifyChange(Landroid/os/ForegroundAppStateObserver;)V

    return-void
.end method

.method synthetic blacklist lambda$onActivityResumed$0$android-os-ForegroundAppStateObserver$1()V
    .locals 1

    .line 95
    iget-object v0, p0, Landroid/os/ForegroundAppStateObserver$1;->this$0:Landroid/os/ForegroundAppStateObserver;

    invoke-static {v0}, Landroid/os/ForegroundAppStateObserver;->-$$Nest$mnotifyChange(Landroid/os/ForegroundAppStateObserver;)V

    return-void
.end method

.method public whitelist onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    return-void
.end method

.method public whitelist onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 117
    return-void
.end method

.method public whitelist onActivityPaused(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 100
    iget-object v0, p0, Landroid/os/ForegroundAppStateObserver$1;->this$0:Landroid/os/ForegroundAppStateObserver;

    invoke-static {v0}, Landroid/os/ForegroundAppStateObserver;->-$$Nest$fgetmForegroundActivitySet(Landroid/os/ForegroundAppStateObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Landroid/os/ForegroundAppStateObserver$1;->this$0:Landroid/os/ForegroundAppStateObserver;

    invoke-static {v1}, Landroid/os/ForegroundAppStateObserver;->-$$Nest$fgetmForegroundActivitySet(Landroid/os/ForegroundAppStateObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Landroid/os/ForegroundAppStateObserver$1;->this$0:Landroid/os/ForegroundAppStateObserver;

    invoke-static {v0}, Landroid/os/ForegroundAppStateObserver;->-$$Nest$fgetmWorker(Landroid/os/ForegroundAppStateObserver;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v0, p0, Landroid/os/ForegroundAppStateObserver$1;->this$0:Landroid/os/ForegroundAppStateObserver;

    invoke-static {v0}, Landroid/os/ForegroundAppStateObserver;->-$$Nest$fgetmWorker(Landroid/os/ForegroundAppStateObserver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroid/os/ForegroundAppStateObserver$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/os/ForegroundAppStateObserver$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/ForegroundAppStateObserver$1;)V

    const-wide/16 v3, 0x2ee

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 105
    return-void

    .line 102
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist onActivityResumed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 90
    iget-object v0, p0, Landroid/os/ForegroundAppStateObserver$1;->this$0:Landroid/os/ForegroundAppStateObserver;

    invoke-static {v0}, Landroid/os/ForegroundAppStateObserver;->-$$Nest$fgetmForegroundActivitySet(Landroid/os/ForegroundAppStateObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Landroid/os/ForegroundAppStateObserver$1;->this$0:Landroid/os/ForegroundAppStateObserver;

    invoke-static {v1}, Landroid/os/ForegroundAppStateObserver;->-$$Nest$fgetmForegroundActivitySet(Landroid/os/ForegroundAppStateObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v0, p0, Landroid/os/ForegroundAppStateObserver$1;->this$0:Landroid/os/ForegroundAppStateObserver;

    invoke-static {v0}, Landroid/os/ForegroundAppStateObserver;->-$$Nest$fgetmWorker(Landroid/os/ForegroundAppStateObserver;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    iget-object v0, p0, Landroid/os/ForegroundAppStateObserver$1;->this$0:Landroid/os/ForegroundAppStateObserver;

    invoke-static {v0}, Landroid/os/ForegroundAppStateObserver;->-$$Nest$fgetmWorker(Landroid/os/ForegroundAppStateObserver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroid/os/ForegroundAppStateObserver$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/os/ForegroundAppStateObserver$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/ForegroundAppStateObserver$1;)V

    const-wide/16 v3, 0x2ee

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 96
    return-void

    .line 92
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 113
    return-void
.end method

.method public whitelist onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 86
    return-void
.end method

.method public whitelist onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 109
    return-void
.end method
