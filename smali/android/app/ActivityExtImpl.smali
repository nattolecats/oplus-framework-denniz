.class public Landroid/app/ActivityExtImpl;
.super Ljava/lang/Object;
.source "ActivityExtImpl.java"

# interfaces
.implements Landroid/app/IActivityExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ActivityExtImpl"


# instance fields
.field final blacklist mActivitiesToImprove:[Ljava/lang/String;

.field final blacklist mActivitiesToImproveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBase:Landroid/app/Activity;

.field private blacklist mIsFinishBoost:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "com.tencent.mm/com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyBeforeDetailUI"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityExtImpl;->mActivitiesToImprove:[Ljava/lang/String;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/app/ActivityExtImpl;->mActivitiesToImproveList:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityExtImpl;->mIsFinishBoost:Z

    .line 64
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Landroid/app/ActivityExtImpl;->mBase:Landroid/app/Activity;

    .line 65
    return-void
.end method


# virtual methods
.method public blacklist debugEventHandled(Landroid/view/InputEvent;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "detail"    # Ljava/lang/String;

    .line 96
    const-string v0, "ActivityExtImpl"

    invoke-static {v0, p1, p2}, Lcom/oplus/debug/InputLog;->debugEventHandled(Ljava/lang/String;Landroid/view/InputEvent;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public blacklist hookForInputLogIsLevelVerbose(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "ActivityExtImpl"

    invoke-static {v0, p1}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public blacklist hookForInputLogOnTouchEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "localClassName"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 89
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouch onTouchEvent not handled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityExtImpl"

    invoke-static {v1, v0}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public blacklist hookForInputLogV(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 84
    const-string v0, "ActivityExtImpl"

    invoke-static {v0, p1}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public blacklist isAppDebuggable(Z)Z
    .locals 1
    .param p1, "isAppDebuggable"    # Z

    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityExtImpl;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isLoggable()Z
    .locals 2

    .line 72
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isZoomSupportMultiWindow(Landroid/app/Activity;I)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "windowingMode"    # I

    .line 167
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityThread;->mOplusActivityThreadExt:Landroid/app/IActivityThreadExt;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityThreadExt;->isZoomSupportMultiWindow(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0
.end method

.method public blacklist onCreateForActivity(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 68
    sget-object v0, Landroid/app/IOplusCommonInjector;->DEFAULT:Landroid/app/IOplusCommonInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusCommonInjector;

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusCommonInjector;->onCreateForActivity(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public blacklist osenseSendFling(Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "duration"    # I

    .line 103
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->sendFlingTransit(Landroid/view/MotionEvent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityExtImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist osenseSetSceneActionForFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .line 124
    iget-boolean v0, p0, Landroid/app/ActivityExtImpl;->mIsFinishBoost:Z

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityManager;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityExtImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist osenseSetSceneActionIfNeeded(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "scene"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityExtImpl;->mActivitiesToImproveList:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/app/OplusActivityManager;->setSceneActionTransit(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityExtImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setIsFinishBoost(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isFinishBoost"    # Z

    .line 136
    if-eqz p1, :cond_0

    const-string v0, "com.tencent.mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iput-boolean p2, p0, Landroid/app/ActivityExtImpl;->mIsFinishBoost:Z

    .line 139
    :cond_0
    return-void
.end method

.method public blacklist shouldInterceptBackKeyForMultiSearch(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 152
    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getInstance()Landroid/app/OplusActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/OplusActivityTaskManager;->shouldInterceptBackKeyForMultiSearch(Landroid/os/IBinder;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "ActivityExtImpl"

    const-string v2, "intercept by multi-search"

    invoke-static {v0, p2, v2}, Lcom/oplus/debug/InputLog;->debugEventHandled(Ljava/lang/String;Landroid/view/InputEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return v1

    .line 158
    :cond_0
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 159
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
