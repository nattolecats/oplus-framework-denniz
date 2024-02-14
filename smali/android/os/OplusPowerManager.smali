.class public Landroid/os/OplusPowerManager;
.super Ljava/lang/Object;
.source "OplusPowerManager.java"


# static fields
.field private static final blacklist INSTANCE:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/os/IOplusPowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusPowerManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Landroid/os/OplusPowerManager$1;

    invoke-direct {v0}, Landroid/os/OplusPowerManager$1;-><init>()V

    sput-object v0, Landroid/os/OplusPowerManager;->INSTANCE:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static blacklist getService()Landroid/os/IOplusPowerManager;
    .locals 1

    .line 55
    sget-object v0, Landroid/os/OplusPowerManager;->INSTANCE:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IOplusPowerManager;

    return-object v0
.end method


# virtual methods
.method public whitelist getDefaultBrightness()I
    .locals 2

    .line 156
    :try_start_0
    const-string v0, "OplusPowerManager"

    const-string v1, "OplusPowerManager, getDefaultBrightness"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IOplusPowerManager;->getDefaultBrightness()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDefaultScreenBrightnessSetting()I
    .locals 2

    .line 192
    :try_start_0
    const-string v0, "OplusPowerManager"

    const-string v1, "OplusPowerManager, getDefaultScreenBrightnessSetting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IOplusPowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDisplayAodStatus()Z
    .locals 2

    .line 128
    :try_start_0
    const-string v0, "OplusPowerManager"

    const-string v1, "OplusPowerManager, getDisplayAodStatus"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IOplusPowerManager;->getDisplayAodStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDisplaysBrightnessByNit(F)[F
    .locals 3
    .param p1, "nit"    # F

    .line 165
    :try_start_0
    const-string v0, "OplusPowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OplusPowerManager, getDisplaysBrightnessByNit, nit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IOplusPowerManager;->getDisplaysBrightnessByNit(F)[F

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMaxBrightness()I
    .locals 2

    .line 147
    :try_start_0
    const-string v0, "OplusPowerManager"

    const-string v1, "OplusPowerManager, getMaxBrightness"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IOplusPowerManager;->getMaxBrightness()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMaximumScreenBrightnessSetting()I
    .locals 2

    .line 183
    :try_start_0
    const-string v0, "OplusPowerManager"

    const-string v1, "OplusPowerManager, getMaximumScreenBrightnessSetting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IOplusPowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMinBrightness()I
    .locals 2

    .line 137
    :try_start_0
    const-string v0, "OplusPowerManager"

    const-string v1, "OplusPowerManager, getMinBrightness"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IOplusPowerManager;->getMinBrightness()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMinScreenOffTimeout()J
    .locals 2

    .line 120
    :try_start_0
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IOplusPowerManager;->getMinScreenOffTimeout()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMinimumScreenBrightnessSetting()I
    .locals 2

    .line 174
    :try_start_0
    const-string v0, "OplusPowerManager"

    const-string v1, "OplusPowerManager, getMinimumScreenBrightnessSetting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IOplusPowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerScreenStatusListener(Lcom/oplus/os/IOplusScreenStatusListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/oplus/os/IOplusScreenStatusListener;

    .line 68
    :try_start_0
    const-string v0, "OplusPowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerScreenStatusListener listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IOplusPowerManager;->registerScreenStatusListener(Lcom/oplus/os/IOplusScreenStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    nop

    .line 73
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setFlashing(IIIII)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "mode"    # I

    .line 201
    :try_start_0
    const-string v0, "OplusPowerManager"

    const-string v1, "OplusPowerManager, setFlashing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/os/IOplusPowerManager;->setFlashing(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    nop

    .line 206
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setMinScreenOffTimeout(J)Z
    .locals 2
    .param p1, "timeout"    # J

    .line 104
    :try_start_0
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IOplusPowerManager;->setMinScreenOffTimeout(J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterScreenStatusListener(Lcom/oplus/os/IOplusScreenStatusListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/oplus/os/IOplusScreenStatusListener;

    .line 85
    :try_start_0
    const-string v0, "OplusPowerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterScreenStatusListener listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Landroid/os/OplusPowerManager;->getService()Landroid/os/IOplusPowerManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IOplusPowerManager;->unregisterScreenStatusListener(Lcom/oplus/os/IOplusScreenStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    nop

    .line 90
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
