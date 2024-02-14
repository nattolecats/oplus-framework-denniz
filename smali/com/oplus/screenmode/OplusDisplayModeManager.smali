.class public Lcom/oplus/screenmode/OplusDisplayModeManager;
.super Ljava/lang/Object;
.source "OplusDisplayModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenmode/OplusDisplayModeManager$InstanceHolder;
    }
.end annotation


# static fields
.field public static final blacklist DEBUG:Z

.field public static final blacklist DEBUG_CALLER_DEPTH:I = 0x8

.field private static final blacklist OPLUS_SCREENMODE_SERVICE_NAME:Ljava/lang/String; = "oplusscreenmode"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusDisplayModeManager"

.field private static final blacklist mOplusDebug:Z


# instance fields
.field private blacklist mInitialized:Z

.field private blacklist mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

.field private blacklist mToken:Landroid/os/Binder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 37
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mOplusDebug:Z

    .line 40
    nop

    .line 41
    const-string v0, "persist.sys.compat.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/screenmode/OplusDisplayModeManager;->DEBUG:Z

    .line 40
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    .line 45
    iput-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mToken:Landroid/os/Binder;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mInitialized:Z

    .line 58
    invoke-direct {p0}, Lcom/oplus/screenmode/OplusDisplayModeManager;->init()V

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/screenmode/OplusDisplayModeManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/screenmode/OplusDisplayModeManager;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/oplus/screenmode/OplusDisplayModeManager;
    .locals 1

    .line 53
    sget-object v0, Lcom/oplus/screenmode/OplusDisplayModeManager$InstanceHolder;->INSTANCE:Lcom/oplus/screenmode/OplusDisplayModeManager;

    .line 54
    .local v0, "instance":Lcom/oplus/screenmode/OplusDisplayModeManager;
    return-object v0
.end method

.method private blacklist init()V
    .locals 7

    .line 62
    sget-boolean v0, Lcom/oplus/screenmode/OplusDisplayModeManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "OplusDisplayModeManager"

    const-string v1, "OplusDisplayModeManager init."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    const-class v0, Lcom/oplus/screenmode/OplusDisplayModeManager;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mInitialized:Z

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "OplusDisplayModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mInitialized= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    monitor-exit v0

    return-void

    .line 71
    :cond_1
    const-string v1, "initoppposcreenmode"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    if-nez v1, :cond_3

    .line 73
    const-string v1, "oplusscreenmode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 74
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_2

    .line 75
    const-string v4, "OplusDisplayModeManager"

    const-string v5, "failed to get oppposcreenmode service:binder null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_2
    invoke-static {v1}, Lcom/oplus/screenmode/IOplusScreenMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/screenmode/IOplusScreenMode;

    move-result-object v4

    iput-object v4, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    .line 80
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_3
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mInitialized:Z

    .line 81
    sget-boolean v4, Lcom/oplus/screenmode/OplusDisplayModeManager;->mOplusDebug:Z

    if-eqz v4, :cond_5

    .line 82
    const-string v4, "OplusDisplayModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " init end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mInitialized:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",service == null ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist enterPSMode(Z)V
    .locals 1
    .param p1, "enter"    # Z

    .line 93
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/oplus/screenmode/OplusDisplayModeManager;->enterPSModeOnRate(ZI)V

    .line 94
    return-void
.end method

.method public blacklist enterPSModeOnRate(ZI)V
    .locals 1
    .param p1, "enter"    # Z
    .param p2, "rate"    # I

    .line 97
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mToken:Landroid/os/Binder;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mToken:Landroid/os/Binder;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/screenmode/OplusDisplayModeManager;->enterPSModeOnRateWithToken(ZILandroid/os/Binder;)V

    .line 101
    return-void
.end method

.method public blacklist enterPSModeOnRateWithToken(ZILandroid/os/Binder;)V
    .locals 3
    .param p1, "enter"    # Z
    .param p2, "rate"    # I
    .param p3, "token"    # Landroid/os/Binder;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " performance spec mode, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusDisplayModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    if-eqz v0, :cond_0

    .line 208
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/screenmode/IOplusScreenMode;->enterPSModeOnRateWithToken(ZILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    nop

    .line 217
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "performance spec mode failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    return-void

    .line 214
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "performance spec mode service unavailable!!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public blacklist getAppOverrideRefreshRate(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "settingMode"    # I

    .line 139
    iget-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    const-string v1, "OplusDisplayModeManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/screenmode/IOplusScreenMode;->getAppOverrideRefreshRate(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "setAppOverrideRefreshRate failed!"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    return v2

    .line 147
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-boolean v0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mOplusDebug:Z

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "setAppOverrideRefreshRate service unavailable!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    return v2
.end method

.method public blacklist getAppOverrideRefreshRateList()Landroid/os/Bundle;
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    const-string v1, "OplusDisplayModeManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    invoke-interface {v0}, Lcom/oplus/screenmode/IOplusScreenMode;->getAppOverrideRefreshRateList()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "setAppOverrideRefreshRate failed!"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    return-object v2

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-boolean v0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mOplusDebug:Z

    if-eqz v0, :cond_1

    .line 164
    const-string v0, "setAppOverrideRefreshRate service unavailable!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    return-object v2
.end method

.method public blacklist isDisplayCompat(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 237
    sget-boolean v0, Lcom/oplus/screenmode/OplusDisplayModeManager;->DEBUG:Z

    const-string v1, "OplusDisplayModeManager"

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDisplayCompat, pkg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 243
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/screenmode/IOplusScreenMode;->isDisplayCompat(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "isDisplayCompat failed!"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    return v2

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v0, "isDisplayCompat service unavailable!!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return v2
.end method

.method public blacklist overrideWindowRefreshRate(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "refreshRateId"    # I

    .line 220
    iget-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    if-eqz v0, :cond_0

    .line 222
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/screenmode/IOplusScreenMode;->overrideWindowRefreshRate(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    nop

    .line 230
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDisplayModeManager"

    const-string v2, "performance spec mode failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    return-void

    .line 228
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public blacklist removeAllCustomizeRefreshRate()Z
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    const-string v1, "OplusDisplayModeManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    invoke-interface {v0}, Lcom/oplus/screenmode/IOplusScreenMode;->removeAllCustomizeRefreshRate()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "removeAllCustomizeRefreshRate failed!"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    return v2

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-boolean v0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mOplusDebug:Z

    if-eqz v0, :cond_1

    .line 196
    const-string v0, "removeAllCustomizeRefreshRate service unavailable!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_1
    return v2
.end method

.method public blacklist removeCustomizeRefreshRate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    const-string v1, "OplusDisplayModeManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 173
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/screenmode/IOplusScreenMode;->removeCustomizeRefreshRate(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "removeCustomizeRefreshRate failed!"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    return v2

    .line 179
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-boolean v0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mOplusDebug:Z

    if-eqz v0, :cond_1

    .line 180
    const-string v0, "removeCustomizeRefreshRate service unavailable!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    return v2
.end method

.method public blacklist setAppOverrideRefreshRate(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "settingMode"    # I
    .param p3, "rate"    # I

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User Override RefreshRate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusDisplayModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/screenmode/IOplusScreenMode;->setAppOverrideRefreshRate(Ljava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "setAppOverrideRefreshRate failed!"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    return v2

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-boolean v0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mOplusDebug:Z

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "setAppOverrideRefreshRate service unavailable!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    return v2
.end method

.method public blacklist setHighTemperatureStatus(II)Z
    .locals 4
    .param p1, "status"    # I
    .param p2, "rate"    # I

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "High Temperature Status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusDisplayModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mScreenModeService:Lcom/oplus/screenmode/IOplusScreenMode;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/screenmode/IOplusScreenMode;->setHighTemperatureStatus(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "requestRefreshRate failed!"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    return v2

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-boolean v0, Lcom/oplus/screenmode/OplusDisplayModeManager;->mOplusDebug:Z

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "setHighTemperatureStatus service unavailable!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    return v2
.end method
