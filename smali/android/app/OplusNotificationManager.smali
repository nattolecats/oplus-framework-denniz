.class public Landroid/app/OplusNotificationManager;
.super Ljava/lang/Object;
.source "OplusNotificationManager.java"


# static fields
.field private static final greylist MANAGER_SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IOplusNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusNotificationManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/app/OplusNotificationManager$1;

    invoke-direct {v0}, Landroid/app/OplusNotificationManager$1;-><init>()V

    sput-object v0, Landroid/app/OplusNotificationManager;->MANAGER_SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getService()Landroid/app/IOplusNotificationManager;
    .locals 1

    .line 55
    sget-object v0, Landroid/app/OplusNotificationManager;->MANAGER_SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusNotificationManager;

    return-object v0
.end method


# virtual methods
.method public whitelist canModifyNotificationPermission(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 70
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 75
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->canModifyNotificationPermission(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 71
    .end local v0    # "service":Landroid/app/IOplusNotificationManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist checkGetOpenid(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 163
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/OplusNotificationManager;->checkGetStdid(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist checkGetStdid(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 186
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 188
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusNotificationManager;->checkGetStdid(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist clearOpenid(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 159
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/OplusNotificationManager;->clearStdid(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    return-void
.end method

.method public whitelist clearStdid(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 177
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 179
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusNotificationManager;->clearStdid(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    nop

    .line 183
    return-void

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAllAppsNotificationPermissions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 332
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IOplusNotificationManager;->getAllAppsNotificationPermissions()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAppBanner(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 258
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 260
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->getAppBanner(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAppVisibility(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 276
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 278
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->getAppVisibility(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getBadgeOption(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 204
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 206
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->getBadgeOption(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getDynamicRingtone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 249
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 251
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->getDynamicRingtone(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getEnableNavigationApps(I)[Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 127
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 129
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IOplusNotificationManager;->getEnableNavigationApps(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getNavigationMode(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 100
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 102
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->getNavigationMode(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getOpenid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 155
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/OplusNotificationManager;->getStdid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStdid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 168
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 170
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusNotificationManager;->getStdid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getStowOption(Ljava/lang/String;I)I
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 231
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 233
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->getStowOption(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isAppRingtonePermissionGranted(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 303
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 305
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->isAppRingtonePermissionGranted(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isAppVibrationPermissionGranted(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 321
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 323
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->isAppVibrationPermissionGranted(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isDriveNavigationMode(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 109
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 111
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->isDriveNavigationMode(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isNavigationMode(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 118
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 120
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IOplusNotificationManager;->isNavigationMode(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isNumbadgeSupport(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 213
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 215
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->isNumbadgeSupport(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isSuppressedByDriveMode(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 136
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 138
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IOplusNotificationManager;->isSuppressedByDriveMode(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setAppBanner(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .line 267
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 269
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusNotificationManager;->setAppBanner(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    nop

    .line 273
    return-void

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setAppRingtonePermission(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "permissionGranted"    # Z

    .line 294
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 296
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusNotificationManager;->setAppRingtonePermission(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    nop

    .line 300
    return-void

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setAppVibrationPermission(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "permissionGranted"    # Z

    .line 312
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 314
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusNotificationManager;->setAppVibrationPermission(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    nop

    .line 318
    return-void

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setAppVisibility(Ljava/lang/String;II)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "option"    # I

    .line 285
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 287
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusNotificationManager;->setAppVisibility(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    nop

    .line 291
    return-void

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setBadgeOption(Ljava/lang/String;II)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "option"    # I

    .line 195
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 197
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusNotificationManager;->setBadgeOption(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    nop

    .line 201
    return-void

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setNumbadgeSupport(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "support"    # Z

    .line 222
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 224
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusNotificationManager;->setNumbadgeSupport(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    nop

    .line 228
    return-void

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setStowOption(Ljava/lang/String;II)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "option"    # I

    .line 240
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 242
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusNotificationManager;->setStowOption(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    nop

    .line 246
    return-void

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setSuppressedByDriveMode(ZI)V
    .locals 3
    .param p1, "mode"    # Z
    .param p2, "userId"    # I

    .line 145
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 147
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->setSuppressedByDriveMode(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    nop

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist shouldInterceptSound(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 82
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 84
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->shouldInterceptSound(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist shouldKeepAlive(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 91
    invoke-static {}, Landroid/app/OplusNotificationManager;->getService()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    .line 93
    .local v0, "service":Landroid/app/IOplusNotificationManager;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusNotificationManager;->shouldKeepAlive(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
