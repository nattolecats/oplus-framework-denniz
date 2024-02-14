.class public Landroid/os/OplusKeyEventManager;
.super Ljava/lang/Object;
.source "OplusKeyEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OplusKeyEventManager$OnKeyEventObserverDelegate;,
        Landroid/os/OplusKeyEventManager$OnKeyEventObserver;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final whitelist INTERCEPT_ALWAYS:I = 0x0

.field public static final whitelist INTERCEPT_ONCE:I = 0x1

.field public static final whitelist LISTEN_ALL_KEY_EVENT:I = 0x0

.field public static final whitelist LISTEN_APP_SWITCH_KEY_EVENT:I = 0x1000

.field public static final whitelist LISTEN_BACK_KEY_EVENT:I = 0x20

.field public static final whitelist LISTEN_BRIGHTNESS_DOWN_KEY_EVENT:I = 0x8000

.field public static final whitelist LISTEN_BRIGHTNESS_UP_KEY_EVENT:I = 0x4000

.field public static final whitelist LISTEN_CAMERA_KEY_EVENT:I = 0x80

.field public static final whitelist LISTEN_ENDCALL_KEY_EVENT:I = 0x10000

.field public static final whitelist LISTEN_F4_KEY_EVENT:I = 0x40

.field public static final whitelist LISTEN_HEADSETHOOK_KEY_EVENT:I = 0x400

.field public static final whitelist LISTEN_HOME_KEY_EVENT:I = 0x10

.field public static final whitelist LISTEN_MENU_KEY_EVENT:I = 0x8

.field public static final whitelist LISTEN_POWER_KEY_EVENT:I = 0x1

.field public static final whitelist LISTEN_SHOULDER_DOWN_KEY_EVENT:I = 0x2000000

.field public static final whitelist LISTEN_SHOULDER_UP_KEY_EVENT:I = 0x4000000

.field public static final whitelist LISTEN_SLEEP_KEY_EVENT:I = 0x20000

.field public static final whitelist LISTEN_VOLUME_DOWN_KEY_EVENT:I = 0x4

.field public static final whitelist LISTEN_VOLUME_MUTE_KEY_EVENT:I = 0x800

.field public static final whitelist LISTEN_VOLUME_UP_KEY_EVENT:I = 0x2

.field public static final whitelist LISTEN_WAKEUP_KEY_EVENT:I = 0x2000

.field public static final whitelist TAG:Ljava/lang/String; = "OplusKeyEventManager"

.field private static volatile blacklist sInstance:Landroid/os/OplusKeyEventManager;


# instance fields
.field private final blacklist mKeyEventInterceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IOplusKeyEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyEventObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/OplusKeyEventManager$OnKeyEventObserver;",
            "Landroid/os/IOplusKeyEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOAms:Landroid/app/OplusActivityTaskManager;

.field public whitelist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 72
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OplusKeyEventManager;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/OplusKeyEventManager;->mVersion:I

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/OplusKeyEventManager;->mKeyEventObservers:Ljava/util/Map;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/OplusKeyEventManager;->mKeyEventInterceptors:Ljava/util/Map;

    .line 95
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getInstance()Landroid/app/OplusActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/OplusKeyEventManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    .line 96
    return-void
.end method

.method public static whitelist getInstance()Landroid/os/OplusKeyEventManager;
    .locals 2

    .line 84
    sget-object v0, Landroid/os/OplusKeyEventManager;->sInstance:Landroid/os/OplusKeyEventManager;

    if-nez v0, :cond_1

    .line 85
    const-class v0, Landroid/os/OplusKeyEventManager;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Landroid/os/OplusKeyEventManager;->sInstance:Landroid/os/OplusKeyEventManager;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Landroid/os/OplusKeyEventManager;

    invoke-direct {v1}, Landroid/os/OplusKeyEventManager;-><init>()V

    sput-object v1, Landroid/os/OplusKeyEventManager;->sInstance:Landroid/os/OplusKeyEventManager;

    .line 89
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 91
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/OplusKeyEventManager;->sInstance:Landroid/os/OplusKeyEventManager;

    return-object v0
.end method


# virtual methods
.method public whitelist getVersion()I
    .locals 1

    .line 153
    iget v0, p0, Landroid/os/OplusKeyEventManager;->mVersion:I

    return v0
.end method

.method public whitelist registerKeyEventInterceptor(Landroid/content/Context;Ljava/lang/String;Landroid/os/OplusKeyEventManager$OnKeyEventObserver;Landroid/util/ArrayMap;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interceptorKey"    # Ljava/lang/String;
    .param p3, "observer"    # Landroid/os/OplusKeyEventManager$OnKeyEventObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/OplusKeyEventManager$OnKeyEventObserver;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 160
    .local p4, "configs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 164
    :cond_0
    const-string v1, "OplusKeyEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start registerKeyEventInterceptor, pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", interceptorKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Landroid/os/OplusKeyEventManager;->mKeyEventInterceptors:Ljava/util/Map;

    monitor-enter v1

    .line 172
    move-object v2, p2

    .line 173
    .local v2, "interceptorFingerPrint":Ljava/lang/String;
    if-eqz p3, :cond_1

    :try_start_0
    iget-object v3, p0, Landroid/os/OplusKeyEventManager;->mKeyEventInterceptors:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    const-string v3, "OplusKeyEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptor already registered before, interceptorFingerPrint: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    monitor-exit v1

    return v0

    .line 193
    .end local v2    # "interceptorFingerPrint":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 178
    .restart local v2    # "interceptorFingerPrint":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 179
    .local v3, "delegate":Landroid/os/OplusKeyEventManager$OnKeyEventObserverDelegate;
    if-eqz p3, :cond_2

    .line 180
    new-instance v4, Landroid/os/OplusKeyEventManager$OnKeyEventObserverDelegate;

    invoke-direct {v4, p0, p3}, Landroid/os/OplusKeyEventManager$OnKeyEventObserverDelegate;-><init>(Landroid/os/OplusKeyEventManager;Landroid/os/OplusKeyEventManager$OnKeyEventObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 183
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/os/OplusKeyEventManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    if-eqz v4, :cond_4

    .line 184
    invoke-virtual {v4, v2, v3, p4}, Landroid/app/OplusActivityTaskManager;->registerKeyEventInterceptor(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;Ljava/util/Map;)Z

    move-result v4

    .line 185
    .local v4, "result":Z
    if-eqz v4, :cond_3

    .line 186
    iget-object v5, p0, Landroid/os/OplusKeyEventManager;->mKeyEventInterceptors:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :cond_3
    :try_start_2
    monitor-exit v1

    return v4

    .line 192
    .end local v4    # "result":Z
    :cond_4
    goto :goto_0

    .line 190
    :catch_0
    move-exception v4

    .line 191
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "OplusKeyEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerKeyEventInterceptor RemoteException, err: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v2    # "interceptorFingerPrint":Ljava/lang/String;
    .end local v3    # "delegate":Landroid/os/OplusKeyEventManager$OnKeyEventObserverDelegate;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1

    .line 194
    return v0

    .line 193
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 161
    :cond_5
    :goto_2
    const-string v1, "OplusKeyEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerKeyEventInterceptor failed, interceptorKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", configs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v0
.end method

.method public whitelist registerKeyEventObserver(Landroid/content/Context;Landroid/os/OplusKeyEventManager$OnKeyEventObserver;I)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Landroid/os/OplusKeyEventManager$OnKeyEventObserver;
    .param p3, "listenFlag"    # I

    .line 99
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 103
    :cond_0
    const-string v1, "OplusKeyEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start registerKeyEventObserver, pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Landroid/os/OplusKeyEventManager;->mKeyEventObservers:Ljava/util/Map;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v2, p0, Landroid/os/OplusKeyEventManager;->mKeyEventObservers:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 107
    const-string v2, "OplusKeyEventManager"

    const-string v3, "already registered before"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    monitor-exit v1

    return v0

    .line 111
    :cond_1
    new-instance v2, Landroid/os/OplusKeyEventManager$OnKeyEventObserverDelegate;

    invoke-direct {v2, p0, p2}, Landroid/os/OplusKeyEventManager$OnKeyEventObserverDelegate;-><init>(Landroid/os/OplusKeyEventManager;Landroid/os/OplusKeyEventManager$OnKeyEventObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .local v2, "delegate":Landroid/os/OplusKeyEventManager$OnKeyEventObserverDelegate;
    :try_start_1
    iget-object v3, p0, Landroid/os/OplusKeyEventManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    if-eqz v3, :cond_3

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "observerFingerPrint":Ljava/lang/String;
    iget-object v4, p0, Landroid/os/OplusKeyEventManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v4, v3, v2, p3}, Landroid/app/OplusActivityTaskManager;->registerKeyEventObserver(Ljava/lang/String;Landroid/os/IOplusKeyEventObserver;I)Z

    move-result v4

    .line 116
    .local v4, "result":Z
    if-eqz v4, :cond_2

    .line 117
    iget-object v5, p0, Landroid/os/OplusKeyEventManager;->mKeyEventObservers:Ljava/util/Map;

    invoke-interface {v5, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :cond_2
    :try_start_2
    monitor-exit v1

    return v4

    .line 123
    .end local v3    # "observerFingerPrint":Ljava/lang/String;
    .end local v4    # "result":Z
    :cond_3
    goto :goto_0

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusKeyEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerKeyEventObserver RemoteException, err: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v2    # "delegate":Landroid/os/OplusKeyEventManager$OnKeyEventObserverDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1

    .line 125
    return v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 100
    :cond_4
    :goto_1
    const-string v1, "OplusKeyEventManager"

    const-string v2, "context is null or observer is null, registerKeyEventObserver failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v0
.end method

.method public whitelist unregisterKeyEventInterceptor(Landroid/content/Context;Ljava/lang/String;Landroid/os/OplusKeyEventManager$OnKeyEventObserver;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interceptorKey"    # Ljava/lang/String;
    .param p3, "observer"    # Landroid/os/OplusKeyEventManager$OnKeyEventObserver;

    .line 198
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    const-string v1, "OplusKeyEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start unregisterKeyEventInterceptor, pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", interceptorKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Landroid/os/OplusKeyEventManager;->mKeyEventInterceptors:Ljava/util/Map;

    monitor-enter v1

    .line 206
    move-object v2, p2

    .line 207
    .local v2, "interceptorFingerPrint":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/os/OplusKeyEventManager;->mKeyEventInterceptors:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 209
    :try_start_1
    iget-object v3, p0, Landroid/os/OplusKeyEventManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    if-eqz v3, :cond_1

    .line 210
    iget-object v3, p0, Landroid/os/OplusKeyEventManager;->mKeyEventInterceptors:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v3, p0, Landroid/os/OplusKeyEventManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v3, v2}, Landroid/app/OplusActivityTaskManager;->unregisterKeyEventInterceptor(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .local v0, "result":Z
    :try_start_2
    monitor-exit v1

    return v0

    .line 216
    .end local v0    # "result":Z
    :cond_1
    goto :goto_0

    .line 214
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusKeyEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterKeyEventInterceptor RemoteException, err: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v2    # "interceptorFingerPrint":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v1

    .line 219
    return v0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 199
    :cond_3
    :goto_1
    const-string v1, "OplusKeyEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context is null, unregisterKeyEventInterceptor failed, interceptorKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v0
.end method

.method public whitelist unregisterKeyEventObserver(Landroid/content/Context;Landroid/os/OplusKeyEventManager$OnKeyEventObserver;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Landroid/os/OplusKeyEventManager$OnKeyEventObserver;

    .line 129
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    const-string v1, "OplusKeyEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start unregisterKeyEventObserver, pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Landroid/os/OplusKeyEventManager;->mKeyEventObservers:Ljava/util/Map;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v2, p0, Landroid/os/OplusKeyEventManager;->mKeyEventObservers:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IOplusKeyEventObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .local v2, "delegate":Landroid/os/IOplusKeyEventObserver;
    if-eqz v2, :cond_2

    .line 139
    :try_start_1
    iget-object v3, p0, Landroid/os/OplusKeyEventManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Landroid/os/OplusKeyEventManager;->mKeyEventObservers:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "observerFingerPrint":Ljava/lang/String;
    iget-object v4, p0, Landroid/os/OplusKeyEventManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    invoke-virtual {v4, v3}, Landroid/app/OplusActivityTaskManager;->unregisterKeyEventObserver(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return v0

    .line 146
    .end local v3    # "observerFingerPrint":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusKeyEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterKeyEventObserver RemoteException, err: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v2    # "delegate":Landroid/os/IOplusKeyEventObserver;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v1

    .line 149
    return v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 130
    :cond_3
    :goto_1
    const-string v1, "OplusKeyEventManager"

    const-string v2, "context is null or observer is null, unregisterKeyEventObserver failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v0
.end method
