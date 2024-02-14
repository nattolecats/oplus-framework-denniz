.class public Landroid/app/OplusStatusBarManager;
.super Ljava/lang/Object;
.source "OplusStatusBarManager.java"


# static fields
.field public static final whitelist CMD_START_ONE_HANDED_MODE:I = 0x1

.field public static final whitelist CMD_STOP_ONE_HANDED_MODE:I = 0x2

.field public static final whitelist FLAG_INPUT_METHOD_SHOW:I = 0x4

.field public static final whitelist FLAG_KEYGUARD_SHOW:I = 0x1

.field public static final whitelist FLAG_SCREEN_ON:I = 0x8

.field public static final whitelist FLAG_SCREEN_SHOT_SHOW:I = 0x2

.field private static final greylist IOplusStatusBarManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IOplusStatusBarManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TOGGLE_SPLIT_SCREEN_FROM_MENU:I = 0x2

.field public static final whitelist TOGGLE_SPLIT_SCREEN_FROM_NONE:I = -0x1

.field public static final whitelist TOGGLE_SPLIT_SCREEN_FROM_RECENT:I = 0x3

.field public static final whitelist TOGGLE_SPLIT_SCREEN_FROM_SERVICE:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Landroid/app/OplusStatusBarManager$1;

    invoke-direct {v0}, Landroid/app/OplusStatusBarManager$1;-><init>()V

    sput-object v0, Landroid/app/OplusStatusBarManager;->IOplusStatusBarManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getService()Landroid/app/IOplusStatusBarManager;
    .locals 1

    .line 64
    sget-object v0, Landroid/app/OplusStatusBarManager;->IOplusStatusBarManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusStatusBarManager;

    return-object v0
.end method

.method public static whitelist registerOplusStatusBar(Landroid/app/OplusBaseStatusBar;)V
    .locals 2
    .param p0, "callback"    # Landroid/app/OplusBaseStatusBar;

    .line 98
    if-nez p0, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/OplusBaseStatusBar;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IOplusStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOplusStatusBar;

    move-result-object v0

    .line 102
    .local v0, "iosCallback":Landroid/app/IOplusStatusBar;
    invoke-static {}, Landroid/app/OplusStatusBarManager;->getService()Landroid/app/IOplusStatusBarManager;

    move-result-object v1

    .line 103
    .local v1, "osm":Landroid/app/IOplusStatusBarManager;
    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v1, v0}, Landroid/app/IOplusStatusBarManager;->registerOplusStatusBar(Landroid/app/IOplusStatusBar;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "iosCallback":Landroid/app/IOplusStatusBar;
    .end local v1    # "osm":Landroid/app/IOplusStatusBarManager;
    :cond_1
    nop

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public whitelist controlOneHandedMode(ILjava/lang/String;)Z
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "handed":Z
    invoke-static {}, Landroid/app/OplusStatusBarManager;->getService()Landroid/app/IOplusStatusBarManager;

    move-result-object v1

    .line 184
    .local v1, "osm":Landroid/app/IOplusStatusBarManager;
    if-eqz v1, :cond_0

    .line 185
    invoke-interface {v1, p1, p2}, Landroid/app/IOplusStatusBarManager;->controlOneHandedMode(ILjava/lang/String;)Z

    move-result v0

    .line 187
    :cond_0
    return v0
.end method

.method public whitelist getTopIsFullscreen()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "topIsFullscreen":Z
    invoke-static {}, Landroid/app/OplusStatusBarManager;->getService()Landroid/app/IOplusStatusBarManager;

    move-result-object v1

    .line 135
    .local v1, "osm":Landroid/app/IOplusStatusBarManager;
    if-eqz v1, :cond_0

    .line 136
    invoke-interface {v1}, Landroid/app/IOplusStatusBarManager;->getTopIsFullscreen()Z

    move-result v0

    .line 138
    :cond_0
    return v0
.end method

.method public whitelist notifyClickTop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-static {}, Landroid/app/OplusStatusBarManager;->getService()Landroid/app/IOplusStatusBarManager;

    move-result-object v0

    .line 120
    .local v0, "osm":Landroid/app/IOplusStatusBarManager;
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Landroid/app/IOplusStatusBarManager;->notifyClickTop()V

    .line 123
    :cond_0
    return-void
.end method

.method public whitelist notifyMultiWindowFocusChanged(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    invoke-static {}, Landroid/app/OplusStatusBarManager;->getService()Landroid/app/IOplusStatusBarManager;

    move-result-object v0

    .line 166
    .local v0, "osm":Landroid/app/IOplusStatusBarManager;
    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p1}, Landroid/app/IOplusStatusBarManager;->notifyMultiWindowFocusChanged(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public whitelist registerOplusClickTopCallback(Landroid/app/IOplusClickTopCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/IOplusClickTopCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-static {}, Landroid/app/OplusStatusBarManager;->getService()Landroid/app/IOplusStatusBarManager;

    move-result-object v0

    .line 113
    .local v0, "osm":Landroid/app/IOplusStatusBarManager;
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1}, Landroid/app/IOplusStatusBarManager;->registerOplusClickTopCallback(Landroid/app/IOplusClickTopCallback;)V

    .line 116
    :cond_0
    return-void
.end method

.method public whitelist registerOplusStatusBar(Landroid/app/IOplusStatusBar;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/IOplusStatusBar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    invoke-static {}, Landroid/app/OplusStatusBarManager;->getService()Landroid/app/IOplusStatusBarManager;

    move-result-object v0

    .line 84
    .local v0, "osm":Landroid/app/IOplusStatusBarManager;
    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1}, Landroid/app/IOplusStatusBarManager;->registerOplusStatusBar(Landroid/app/IOplusStatusBar;)V

    .line 87
    :cond_0
    return-void
.end method

.method public whitelist setStatusBarFunction(ILjava/lang/String;)Z
    .locals 2
    .param p1, "functionCode"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "function":Z
    invoke-static {}, Landroid/app/OplusStatusBarManager;->getService()Landroid/app/IOplusStatusBarManager;

    move-result-object v1

    .line 151
    .local v1, "osm":Landroid/app/IOplusStatusBarManager;
    if-eqz v1, :cond_0

    .line 152
    invoke-interface {v1, p1, p2}, Landroid/app/IOplusStatusBarManager;->setStatusBarFunction(ILjava/lang/String;)Z

    move-result v0

    .line 154
    :cond_0
    return v0
.end method

.method public whitelist toggleSplitScreen(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/app/OplusStatusBarManager;->getService()Landroid/app/IOplusStatusBarManager;

    move-result-object v0

    .line 143
    .local v0, "osm":Landroid/app/IOplusStatusBarManager;
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p1}, Landroid/app/IOplusStatusBarManager;->toggleSplitScreen(I)V

    .line 146
    :cond_0
    return-void
.end method

.method public whitelist topIsFullscreen(Z)V
    .locals 1
    .param p1, "topActivityIsFullscreen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/app/OplusStatusBarManager;->getService()Landroid/app/IOplusStatusBarManager;

    move-result-object v0

    .line 159
    .local v0, "osm":Landroid/app/IOplusStatusBarManager;
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0, p1}, Landroid/app/IOplusStatusBarManager;->topIsFullscreen(Z)V

    .line 162
    :cond_0
    return-void
.end method

.method public whitelist unregisterOplusClickTopCallback(Landroid/app/IOplusClickTopCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/IOplusClickTopCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/app/OplusStatusBarManager;->getService()Landroid/app/IOplusStatusBarManager;

    move-result-object v0

    .line 127
    .local v0, "osm":Landroid/app/IOplusStatusBarManager;
    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, p1}, Landroid/app/IOplusStatusBarManager;->unregisterOplusClickTopCallback(Landroid/app/IOplusClickTopCallback;)V

    .line 130
    :cond_0
    return-void
.end method
