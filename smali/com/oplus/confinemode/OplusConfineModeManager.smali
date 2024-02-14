.class public Lcom/oplus/confinemode/OplusConfineModeManager;
.super Ljava/lang/Object;
.source "OplusConfineModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserverDelegate;,
        Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserver;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final whitelist OPLUS_CONFINE_MODE_CHILDREN:I = 0x2

.field public static final whitelist OPLUS_CONFINE_MODE_DRIVE:I = 0x1

.field public static final whitelist OPLUS_CONFINE_MODE_FOCUS:I = 0x4

.field public static final whitelist OPLUS_CONFINE_MODE_GAME_FOCUS:I = 0x8

.field public static final whitelist OPLUS_CONFINE_MODE_LEARN:I = 0x10

.field public static final whitelist OPLUS_CONFINE_MODE_NORMAL:I = 0x0

.field public static final whitelist OPLUS_PERMIT_TYPE_APPEND:I = 0x2

.field public static final whitelist OPLUS_PERMIT_TYPE_CLEAR:I = 0x0

.field public static final whitelist OPLUS_PERMIT_TYPE_CPN:I = 0x8

.field public static final whitelist OPLUS_PERMIT_TYPE_PKG:I = 0x4

.field public static final whitelist OPLUS_PERMIT_TYPE_REPLACE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "OplusConfineModeManager"

.field private static volatile blacklist sInstance:Lcom/oplus/confinemode/OplusConfineModeManager;


# instance fields
.field private blacklist mOAms:Landroid/app/OplusActivityManager;

.field private final blacklist mObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserver;",
            "Lcom/oplus/confinemode/IOplusConfineModeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/oplus/confinemode/OplusConfineModeManager;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 33
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/confinemode/OplusConfineModeManager;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mObservers:Ljava/util/Map;

    .line 56
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mOAms:Landroid/app/OplusActivityManager;

    .line 57
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/confinemode/OplusConfineModeManager;
    .locals 2

    .line 60
    sget-object v0, Lcom/oplus/confinemode/OplusConfineModeManager;->sInstance:Lcom/oplus/confinemode/OplusConfineModeManager;

    if-nez v0, :cond_1

    .line 61
    const-class v0, Lcom/oplus/confinemode/OplusConfineModeManager;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/oplus/confinemode/OplusConfineModeManager;->sInstance:Lcom/oplus/confinemode/OplusConfineModeManager;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/oplus/confinemode/OplusConfineModeManager;

    invoke-direct {v1}, Lcom/oplus/confinemode/OplusConfineModeManager;-><init>()V

    sput-object v1, Lcom/oplus/confinemode/OplusConfineModeManager;->sInstance:Lcom/oplus/confinemode/OplusConfineModeManager;

    .line 65
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 67
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/confinemode/OplusConfineModeManager;->sInstance:Lcom/oplus/confinemode/OplusConfineModeManager;

    return-object v0
.end method


# virtual methods
.method public whitelist getConfineMode()I
    .locals 4

    .line 83
    const-string v0, "OplusConfineModeManager"

    :try_start_0
    sget-boolean v1, Lcom/oplus/confinemode/OplusConfineModeManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfineMode, caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->getConfineMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfineMode remoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerConfineModeObserver(Landroid/content/Context;Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserver;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserver;

    .line 105
    sget-boolean v0, Lcom/oplus/confinemode/OplusConfineModeManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "OplusConfineModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerConfineModeObserver, context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", observer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mObservers:Ljava/util/Map;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mObservers:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 114
    const-string v2, "OplusConfineModeManager"

    const-string v3, "already register before"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    monitor-exit v1

    return v0

    .line 117
    :cond_2
    new-instance v2, Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserverDelegate;

    invoke-direct {v2, p0, p2}, Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserverDelegate;-><init>(Lcom/oplus/confinemode/OplusConfineModeManager;Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .local v2, "delegate":Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserverDelegate;
    :try_start_1
    iget-object v3, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v3, :cond_4

    .line 120
    invoke-virtual {v3, v2}, Landroid/app/OplusActivityManager;->registerConfineModeObserver(Lcom/oplus/confinemode/IOplusConfineModeObserver;)Z

    move-result v3

    .line 121
    .local v3, "result":Z
    if-eqz v3, :cond_3

    .line 122
    iget-object v4, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mObservers:Ljava/util/Map;

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :cond_3
    :try_start_2
    monitor-exit v1

    return v3

    .line 128
    .end local v3    # "result":Z
    :cond_4
    goto :goto_0

    .line 126
    :catch_0
    move-exception v3

    .line 127
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusConfineModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerConfineModeObserver failed, err: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v2    # "delegate":Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserverDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1

    .line 130
    return v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 109
    :cond_5
    :goto_1
    return v0
.end method

.method public whitelist setConfineMode(IZ)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "on"    # Z

    .line 72
    const-string v0, "OplusConfineModeManager"

    :try_start_0
    sget-boolean v1, Lcom/oplus/confinemode/OplusConfineModeManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfineMode: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1, p2}, Landroid/app/OplusActivityManager;->setConfineMode(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfineMode remoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setPermitList(IILjava/util/List;Z)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "type"    # I
    .param p4, "isMultiApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 95
    .local p3, "permits":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "OplusConfineModeManager"

    :try_start_0
    sget-boolean v1, Lcom/oplus/confinemode/OplusConfineModeManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPermitList: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isMultiApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/app/OplusActivityManager;->setPermitList(IILjava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPermitList remoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist unregisterConfineModeObserver(Landroid/content/Context;Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserver;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserver;

    .line 134
    sget-boolean v0, Lcom/oplus/confinemode/OplusConfineModeManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "OplusConfineModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterConfineModeObserver, context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", observer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mObservers:Ljava/util/Map;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mObservers:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/confinemode/IOplusConfineModeObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .local v2, "delegate":Lcom/oplus/confinemode/IOplusConfineModeObserver;
    if-eqz v2, :cond_4

    .line 145
    :try_start_1
    iget-object v3, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v3, :cond_3

    .line 146
    invoke-virtual {v3, v2}, Landroid/app/OplusActivityManager;->unregisterConfineModeObserver(Lcom/oplus/confinemode/IOplusConfineModeObserver;)Z

    move-result v3

    .line 147
    .local v3, "result":Z
    if-eqz v3, :cond_2

    .line 148
    iget-object v4, p0, Lcom/oplus/confinemode/OplusConfineModeManager;->mObservers:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :cond_2
    :try_start_2
    monitor-exit v1

    return v3

    .line 154
    .end local v3    # "result":Z
    :cond_3
    goto :goto_0

    .line 152
    :catch_0
    move-exception v3

    .line 153
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusConfineModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterConfineModeObserver failed, err: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v2    # "delegate":Lcom/oplus/confinemode/IOplusConfineModeObserver;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    monitor-exit v1

    .line 157
    return v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 138
    :cond_5
    :goto_1
    return v0
.end method
