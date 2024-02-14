.class public Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;
.super Ljava/lang/Object;
.source "OplusSplitScreenManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal$LazyHolder;
    }
.end annotation


# static fields
.field public static final blacklist FIRST_OPLUS_EXIT_REASON_CODE:I = 0xc8

.field public static final blacklist OPLUS_EXIT_REASON_APP_REQUEST:I = 0xc8

.field public static final blacklist OPLUS_EXIT_REASON_CONTROL_BAR_MENU_MAXIMIZE:I = 0xc9

.field private static final blacklist PKG_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusSplitScreenManager"

.field private static blacklist sSplitScreenSession:Lcom/oplus/splitscreen/IOplusSplitScreenSession;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    sput-object v0, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->sSplitScreenSession:Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;-><init>()V

    return-void
.end method

.method private blacklist checkCaller(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 67
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 68
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;
    .locals 1

    .line 52
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    .locals 3

    .line 56
    sget-object v0, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->sSplitScreenSession:Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    if-nez v0, :cond_0

    .line 58
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getInstance()Landroid/app/OplusActivityTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/OplusActivityTaskManager;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    sput-object v0, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->sSplitScreenSession:Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "getSplitScreenSession error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v0, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->sSplitScreenSession:Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    return-object v0
.end method


# virtual methods
.method public blacklist getRecentUsedApp(IJZLjava/util/List;)Ljava/util/List;
    .locals 7
    .param p1, "maxNum"    # I
    .param p2, "period"    # J
    .param p4, "supportSplitScreen"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    .local p5, "exclude":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 135
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 136
    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->getRecentUsedApp(IJZLjava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 140
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "getRecentUsedApp error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist maintainSplitToZoomTaskState(IZ)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "maintain"    # Z

    .line 285
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 286
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p1, p2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->maintainSplitToZoomTaskState(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "maintainSplitToZoomTaskState error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist moveChildrenTaskToBack(I)Z
    .locals 3
    .param p1, "rootTaskId"    # I

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 123
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->moveChildrenTaskToBack(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 128
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "moveChildrenTaskToBack error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyFoldUpdatingComplete()V
    .locals 3

    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 242
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->notifyFoldUpdatingComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "notifyFoldUpdatingComplete error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist notifySplitRootTaskId(III)V
    .locals 3
    .param p1, "root"    # I
    .param p2, "primary"    # I
    .param p3, "secondary"    # I

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 101
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->notifySplitRootTaskId(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "notifySplitRootTaskId error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist registerActivityMultiWindowAllowanceObserver(Landroid/app/Activity;Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "observer"    # Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;

    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 202
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->registerActivityMultiWindowAllowanceObserver(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "registerActivityMultiWindowAllowanceObserver error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist registerStackDivider(Landroid/content/Context;Lcom/oplus/splitscreen/IOplusStackDividerConnection;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conn"    # Lcom/oplus/splitscreen/IOplusStackDividerConnection;

    .line 74
    const-string v0, "com.android.systemui"

    invoke-direct {p0, p1, v0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->checkCaller(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 79
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0, p2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->registerStackDivider(Lcom/oplus/splitscreen/IOplusStackDividerConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_1
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "registerStackDivider error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist removeSelfSplitTaskIfNeed(II)V
    .locals 3
    .param p1, "toTopTaskId"    # I
    .param p2, "toBottomTaskId"    # I

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 231
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0, p1, p2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->removeSelfSplitTaskIfNeed(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "removeSelfSplitTaskIfNeed error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist requestSwitchToFullScreen(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "requestActivity"    # Landroid/app/Activity;

    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 183
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->requestSwitchToFullScreen(Landroid/os/IBinder;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 188
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "requestSwitchToFullScreen error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestSwitchToSplitScreen(Landroid/app/Activity;Lcom/oplus/app/SplitScreenParams;)Z
    .locals 3
    .param p1, "requestActivity"    # Landroid/app/Activity;
    .param p2, "params"    # Lcom/oplus/app/SplitScreenParams;

    .line 164
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 165
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->requestSwitchToSplitScreen(Landroid/os/IBinder;Lcom/oplus/app/SplitScreenParams;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 170
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "requestSwitchToSplitScreen error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setOverrideRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .locals 3
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 252
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 253
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0, p1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->setOverrideRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "setOverrideRemoteAnimations error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setSplitControlBarRegion(Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "isPrimary"    # Z

    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 90
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p1, p2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->setSplitControlBarRegion(Landroid/graphics/Rect;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "setSplitControlBarRegion error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setSplitRequestedOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 147
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->setSplitRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "setSplitRequestedOrientation error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setSplitRootTaskAlwaysOnTop(Z)V
    .locals 3
    .param p1, "onTop"    # Z

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 112
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->setSplitRootTaskAlwaysOnTop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "setSplitRootTaskAlwaysOnTop error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setSplitTasksState(IIZ)V
    .locals 3
    .param p1, "taskIdf"    # I
    .param p2, "taskIds"    # I
    .param p3, "addSplitPair"    # Z

    .line 263
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 264
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->setSplitTasksState(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "setSplitTasksState error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist startZoomWindowFromSplit(ILandroid/graphics/Rect;F)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "scale"    # F

    .line 274
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 275
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->startZoomWindowFromSplit(ILandroid/graphics/Rect;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "startZoomWindowFromSplit error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist unregisterActivityMultiWindowAllowanceObserver(Landroid/app/Activity;Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "observer"    # Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/splitscreen/OplusSplitScreenManagerInternal;->getSplitScreenSession()Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    move-result-object v0

    .line 220
    .local v0, "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession;->unregisterActivityMultiWindowAllowanceObserver(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0    # "session":Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    :cond_0
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusSplitScreenManager"

    const-string v2, "unregisterActivityMultiWindowAllowanceObserver error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
