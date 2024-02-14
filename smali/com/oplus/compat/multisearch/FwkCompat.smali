.class public Lcom/oplus/compat/multisearch/FwkCompat;
.super Ljava/lang/Object;
.source "FwkCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;,
        Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;,
        Lcom/oplus/compat/multisearch/FwkCompat$InternalInsetsInfoWrapper;,
        Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper;,
        Lcom/oplus/compat/multisearch/FwkCompat$TaskView;,
        Lcom/oplus/compat/multisearch/FwkCompat$WindowOrganizerWrapper;,
        Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;,
        Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;,
        Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MultiSearchFwkCompat"

.field public static final whitelist WINDOWING_MODE_FREEFORM:I = 0x5

.field public static final whitelist WINDOWING_MODE_FULLSCREEN:I = 0x1

.field public static final whitelist WINDOWING_MODE_MULTI_WINDOW:I = 0x6

.field public static final whitelist WINDOWING_MODE_PINNED:I = 0x2

.field public static final whitelist WINDOWING_MODE_UNDEFINED:I

.field private static final blacklist sInstance:Lcom/oplus/compat/multisearch/FwkCompat;


# instance fields
.field private final blacklist mRegisteredInsetsListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;",
            "Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTaskStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTaskStackListenerWrapper:Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTaskStackChangeListeners(Lcom/oplus/compat/multisearch/FwkCompat;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackChangeListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/oplus/compat/multisearch/FwkCompat;

    invoke-direct {v0}, Lcom/oplus/compat/multisearch/FwkCompat;-><init>()V

    sput-object v0, Lcom/oplus/compat/multisearch/FwkCompat;->sInstance:Lcom/oplus/compat/multisearch/FwkCompat;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mRegisteredInsetsListeners:Landroid/util/ArrayMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackChangeListeners:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/compat/multisearch/FwkCompat;
    .locals 1

    .line 62
    sget-object v0, Lcom/oplus/compat/multisearch/FwkCompat;->sInstance:Lcom/oplus/compat/multisearch/FwkCompat;

    return-object v0
.end method


# virtual methods
.method public whitelist addOnComputeInternalInsetsListener(Landroid/view/View;Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;

    .line 124
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Lcom/oplus/compat/multisearch/FwkCompat$1;

    invoke-direct {v0, p0, p2}, Lcom/oplus/compat/multisearch/FwkCompat$1;-><init>(Lcom/oplus/compat/multisearch/FwkCompat;Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;)V

    .line 133
    .local v0, "delegate":Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
    iget-object v1, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mRegisteredInsetsListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 135
    return-void

    .line 125
    .end local v0    # "delegate":Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist getLaunchCookieFromTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getVisibleFromTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getWindowContainerTokenFromTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;
    .locals 2
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 120
    new-instance v0, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-direct {v0, v1}, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;-><init>(Landroid/window/WindowContainerToken;)V

    return-object v0
.end method

.method public whitelist getWindowingModeFromTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .locals 1
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 108
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/OplusBaseConfiguration;

    iget-object v0, v0, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    return v0
.end method

.method public whitelist registerTaskStackListener(Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;

    .line 148
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackListenerWrapper:Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;

    if-eqz v0, :cond_2

    .line 155
    return-void

    .line 158
    :cond_2
    :try_start_0
    new-instance v0, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;

    invoke-direct {v0, p0}, Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;-><init>(Lcom/oplus/compat/multisearch/FwkCompat;)V

    iput-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackListenerWrapper:Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;

    .line 159
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackListenerWrapper:Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackListenerWrapper:Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;

    .line 162
    const-string v1, "MultiSearchFwkCompat"

    const-string v2, "Failed to register task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist removeOnComputeInternalInsetsListener(Landroid/view/View;Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;

    .line 138
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mRegisteredInsetsListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 142
    .local v0, "delegate":Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 145
    :cond_1
    return-void

    .line 139
    .end local v0    # "delegate":Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist removeSurfaceControlInTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "sc"    # Landroid/view/SurfaceControl;

    .line 102
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 105
    :cond_0
    return-void
.end method

.method public whitelist setAvoidMoveToFront(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 81
    :cond_0
    return-void
.end method

.method public whitelist setFocusedTask(I)V
    .locals 3
    .param p1, "taskId"    # I

    .line 71
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiSearchFwkCompat"

    const-string v2, "Failed to set focus task"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setLaunchCookie(Landroid/app/ActivityOptions;Landroid/os/Binder;)V
    .locals 0
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .param p2, "cookie"    # Landroid/os/Binder;

    .line 90
    return-void
.end method

.method public whitelist setLaunchWindowingMode(Landroid/app/ActivityOptions;I)V
    .locals 0
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .param p2, "windowingMode"    # I

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public whitelist setMultiTaskMode(Landroid/app/ActivityOptions;Z)V
    .locals 0
    .param p1, "options"    # Landroid/app/ActivityOptions;
    .param p2, "b"    # Z

    .line 93
    return-void
.end method

.method public whitelist showSurfaceControlInTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "sc"    # Landroid/view/SurfaceControl;

    .line 96
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 99
    :cond_0
    return-void
.end method

.method public whitelist supportMultiSearchFeature(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oplus.feature.largescreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterTaskStackListener(Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;

    .line 167
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackListenerWrapper:Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;

    if-nez v0, :cond_1

    .line 172
    return-void

    .line 175
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackListenerWrapper:Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiSearchFwkCompat"

    const-string v2, "Failed to unregister task stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat;->mTaskStackListenerWrapper:Lcom/oplus/compat/multisearch/FwkCompat$TaskStackListenerWrapper;

    .line 180
    return-void
.end method
