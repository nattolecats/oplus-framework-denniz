.class public Lcom/oplus/compatmode/OplusCompatModeManager;
.super Ljava/lang/Object;
.source "OplusCompatModeManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusCompatModeManager"

.field private static blacklist sCompatModeSession:Lcom/oplus/compatmode/IOplusCompatModeSession;

.field private static volatile blacklist sInstance:Lcom/oplus/compatmode/OplusCompatModeManager;


# instance fields
.field private final blacklist mAms:Landroid/app/OplusActivityManager;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/compatmode/OplusCompatModeManager;->mAms:Landroid/app/OplusActivityManager;

    .line 38
    return-void
.end method

.method private blacklist getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;
    .locals 4

    .line 144
    const-class v0, Lcom/oplus/compatmode/OplusCompatModeManager;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-object v1, Lcom/oplus/compatmode/OplusCompatModeManager;->sCompatModeSession:Lcom/oplus/compatmode/IOplusCompatModeSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 147
    :try_start_1
    iget-object v1, p0, Lcom/oplus/compatmode/OplusCompatModeManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;

    move-result-object v1

    sput-object v1, Lcom/oplus/compatmode/OplusCompatModeManager;->sCompatModeSession:Lcom/oplus/compatmode/IOplusCompatModeSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "OplusCompatModeManager"

    const-string v3, "getCompatModeSession error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/oplus/compatmode/OplusCompatModeManager;->sCompatModeSession:Lcom/oplus/compatmode/IOplusCompatModeSession;

    monitor-exit v0

    return-object v1

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static whitelist getInstance()Lcom/oplus/compatmode/OplusCompatModeManager;
    .locals 2

    .line 41
    sget-object v0, Lcom/oplus/compatmode/OplusCompatModeManager;->sInstance:Lcom/oplus/compatmode/OplusCompatModeManager;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/oplus/compatmode/OplusCompatModeManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/oplus/compatmode/OplusCompatModeManager;->sInstance:Lcom/oplus/compatmode/OplusCompatModeManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/oplus/compatmode/OplusCompatModeManager;

    invoke-direct {v1}, Lcom/oplus/compatmode/OplusCompatModeManager;-><init>()V

    sput-object v1, Lcom/oplus/compatmode/OplusCompatModeManager;->sInstance:Lcom/oplus/compatmode/OplusCompatModeManager;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/compatmode/OplusCompatModeManager;->sInstance:Lcom/oplus/compatmode/OplusCompatModeManager;

    return-object v0
.end method


# virtual methods
.method public blacklist compatUIInit()V
    .locals 3

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/compatmode/OplusCompatModeManager;->getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;

    move-result-object v0

    .line 121
    .local v0, "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/oplus/compatmode/IOplusCompatModeSession;->compatUIInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    :cond_0
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCompatModeManager"

    const-string v2, "compatUIInit error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist getCompactWindowInfo(I)Lcom/oplus/compactwindow/OplusCompactWindowInfo;
    .locals 3
    .param p1, "taskId"    # I

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/compatmode/OplusCompatModeManager;->getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;

    move-result-object v0

    .line 80
    .local v0, "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1}, Lcom/oplus/compatmode/IOplusCompatModeSession;->getCompactWindowInfo(I)Lcom/oplus/compactwindow/OplusCompactWindowInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 85
    .end local v0    # "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    :cond_0
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCompatModeManager"

    const-string v2, "getCompactWindowInfo error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist moveCompatModeWindowToLeft(I)I
    .locals 3
    .param p1, "taskId"    # I

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/compatmode/OplusCompatModeManager;->getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;

    move-result-object v0

    .line 54
    .local v0, "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lcom/oplus/compatmode/IOplusCompatModeSession;->moveCompatModeWindowToLeft(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 59
    .end local v0    # "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    :cond_0
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCompatModeManager"

    const-string v2, "moveCompatModeWindowToLeft error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist moveCompatModeWindowToRight(I)I
    .locals 3
    .param p1, "taskId"    # I

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/compatmode/OplusCompatModeManager;->getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;

    move-result-object v0

    .line 66
    .local v0, "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lcom/oplus/compatmode/IOplusCompatModeSession;->moveCompatModeWindowToRight(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 71
    .end local v0    # "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    :cond_0
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCompatModeManager"

    const-string v2, "moveCompatModeWindowToRight error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .locals 3
    .param p1, "observer"    # Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/compatmode/OplusCompatModeManager;->getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;

    move-result-object v0

    .line 93
    .local v0, "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p1}, Lcom/oplus/compatmode/IOplusCompatModeSession;->registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 98
    .end local v0    # "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    :cond_0
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCompatModeManager"

    const-string v2, "getCompactWindowInfo error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist restartProcessAsUser(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/compatmode/OplusCompatModeManager;->getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;

    move-result-object v0

    .line 135
    .local v0, "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p1, p2}, Lcom/oplus/compatmode/IOplusCompatModeSession;->forceStopPackageAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    :cond_0
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCompatModeManager"

    const-string v2, "forceStopPackageAsUser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .locals 3
    .param p1, "observer"    # Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/compatmode/OplusCompatModeManager;->getCompatModeSession()Lcom/oplus/compatmode/IOplusCompatModeSession;

    move-result-object v0

    .line 106
    .local v0, "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1}, Lcom/oplus/compatmode/IOplusCompatModeSession;->unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 111
    .end local v0    # "session":Lcom/oplus/compatmode/IOplusCompatModeSession;
    :cond_0
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusCompatModeManager"

    const-string v2, "getCompactWindowInfo error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
