.class public Lcom/itgsa/opensdk/wm/MultiWindowTrigger;
.super Ljava/lang/Object;
.source "MultiWindowTrigger.java"


# static fields
.field private static final blacklist SDK_VERSION:I = 0x2710


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getVersion()I
    .locals 1

    .line 56
    const/16 v0, 0x2710

    return v0
.end method

.method public whitelist isDeviceSupport(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->hasLargeScreenFeature()Z

    move-result v0

    return v0
.end method

.method public whitelist registerActivityMultiWindowAllowanceObserver(Landroid/app/Activity;Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "observer"    # Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;

    .line 102
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;->asObserver()Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->registerActivityMultiWindowAllowanceObserver(Landroid/app/Activity;Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;)V

    .line 103
    return-void
.end method

.method public whitelist requestSwitchToFullScreen(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "requestActivity"    # Landroid/app/Activity;

    .line 90
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->requestSwitchToFullScreen(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public whitelist requestSwitchToSplitScreen(Landroid/app/Activity;Lcom/itgsa/opensdk/wm/SplitScreenParams;)Z
    .locals 5
    .param p1, "requestActivity"    # Landroid/app/Activity;
    .param p2, "params"    # Lcom/itgsa/opensdk/wm/SplitScreenParams;

    .line 69
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 70
    return v0

    .line 72
    :cond_0
    invoke-virtual {p2}, Lcom/itgsa/opensdk/wm/SplitScreenParams;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    .line 73
    .local v1, "launchIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    const/high16 v3, 0x44000000    # 512.0f

    invoke-static {p1, v0, v1, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 76
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Lcom/oplus/app/SplitScreenParams;

    invoke-virtual {p2}, Lcom/itgsa/opensdk/wm/SplitScreenParams;->isSelfSplit()Z

    move-result v3

    .line 77
    invoke-virtual {p2}, Lcom/itgsa/opensdk/wm/SplitScreenParams;->getLaunchPosition()I

    move-result v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/oplus/app/SplitScreenParams;-><init>(ZLandroid/app/PendingIntent;Landroid/content/Intent;I)V

    .line 78
    .local v2, "innerParams":Lcom/oplus/app/SplitScreenParams;
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->requestSwitchToSplitScreen(Landroid/app/Activity;Lcom/oplus/app/SplitScreenParams;)Z

    move-result v3

    return v3
.end method

.method public whitelist unregisterActivityMultiWindowAllowanceObserver(Landroid/app/Activity;Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "observer"    # Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;

    .line 114
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;->asObserver()Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->unregisterActivityMultiWindowAllowanceObserver(Landroid/app/Activity;Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;)V

    .line 115
    return-void
.end method
