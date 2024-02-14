.class public final Lcom/oplus/screenshot/OplusScreenshotCompatible;
.super Ljava/lang/Object;
.source "OplusScreenshotCompatible.java"


# static fields
.field private static final blacklist CHANNEL_ID:Ljava/lang/String;

.field private static final blacklist DBG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "LongshotDump"


# instance fields
.field private final blacklist mActivityManager:Landroid/app/ActivityManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mNotificationManager:Landroid/app/NotificationManager;

.field private final blacklist mOplusAms:Landroid/app/OplusActivityManager;

.field private final blacklist mOplusStatusBarManager:Landroid/app/OplusStatusBarManager;

.field private final blacklist mOplusWindowManager:Landroid/view/OplusWindowManager;

.field private final blacklist mStatusBarManager:Landroid/app/StatusBarManager;

.field private final blacklist mWhiteListManager:Landroid/app/OplusWhiteListManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 55
    sget-boolean v0, Lcom/oplus/screenshot/OplusLongshotDump;->DBG:Z

    sput-boolean v0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    .line 60
    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->FOREGROUND_SERVICE:Ljava/lang/String;

    sput-object v0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->CHANNEL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/app/OplusStatusBarManager;

    invoke-direct {v0}, Landroid/app/OplusStatusBarManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusStatusBarManager:Landroid/app/OplusStatusBarManager;

    .line 67
    new-instance v0, Landroid/view/OplusWindowManager;

    invoke-direct {v0}, Landroid/view/OplusWindowManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    .line 78
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mContext:Landroid/content/Context;

    .line 79
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mActivityManager:Landroid/app/ActivityManager;

    .line 80
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mNotificationManager:Landroid/app/NotificationManager;

    .line 81
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 82
    new-instance v0, Landroid/app/OplusWhiteListManager;

    invoke-direct {v0, p1}, Landroid/app/OplusWhiteListManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mWhiteListManager:Landroid/app/OplusWhiteListManager;

    .line 83
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusAms:Landroid/app/OplusActivityManager;

    .line 84
    return-void
.end method


# virtual methods
.method public whitelist addStageProtectInfo(Ljava/lang/String;J)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .line 316
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mWhiteListManager:Landroid/app/OplusWhiteListManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusWhiteListManager;->addStageProtectInfo(Ljava/lang/String;J)V

    .line 317
    return-void
.end method

.method public whitelist cancelNotification(I)V
    .locals 2
    .param p1, "notificatinID"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/oplus/screenshot/OplusScreenshotCompatible;->CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 275
    return-void
.end method

.method public whitelist createNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/oplus/screenshot/OplusScreenshotCompatible;->CHANNEL_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mContext:Landroid/content/Context;

    .line 264
    const v3, 0x1040615

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 266
    .local v0, "foregroundChannel":Landroid/app/NotificationChannel;
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 267
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v2
.end method

.method public whitelist createNotificationBuilder(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "channelId"    # Ljava/lang/String;

    .line 295
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist createNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "channelName"    # Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/screenshot/OplusScreenshotCompatible;->createNotificationChannel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method public whitelist createNotificationChannel(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "channelName"    # Ljava/lang/String;
    .param p3, "importance"    # I

    .line 279
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 280
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 281
    return-void
.end method

.method public whitelist deleteNotificationChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public whitelist getFocusedWindowFrame(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 212
    const-string v0, "LongshotDump"

    :try_start_0
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v1, p1}, Landroid/view/OplusWindowManager;->getFocusedWindowFrame(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 214
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFocusedWindowFrame : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 218
    :goto_1
    return-void
.end method

.method public whitelist getLongshotSurfaceLayer()I
    .locals 6

    .line 114
    const-string v0, "LongshotDump"

    const/4 v1, 0x0

    .line 116
    .local v1, "layer":I
    :try_start_0
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v2}, Landroid/view/OplusWindowManager;->getLongshotSurfaceLayer()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 121
    :goto_0
    goto :goto_1

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 118
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLongshotSurfaceLayer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 122
    :goto_1
    return v1
.end method

.method public whitelist getLongshotSurfaceLayerByType(I)I
    .locals 6
    .param p1, "type"    # I

    .line 126
    const-string v0, "LongshotDump"

    const/4 v1, 0x0

    .line 128
    .local v1, "layer":I
    :try_start_0
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v2, p1}, Landroid/view/OplusWindowManager;->getLongshotSurfaceLayerByType(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 133
    :goto_0
    goto :goto_1

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 130
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLongshotSurfaceLayerByType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 134
    :goto_1
    return v1
.end method

.method public whitelist getTopActivity()Landroid/content/ComponentName;
    .locals 5

    .line 331
    const/4 v0, 0x0

    .line 342
    .local v0, "componentName":Landroid/content/ComponentName;
    :try_start_0
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->getAllTopAppInfos()Ljava/util/List;

    move-result-object v1

    .line 343
    .local v1, "listAppInfo":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusAppInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 345
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/app/OplusAppInfo;

    .line 346
    .local v3, "info":Lcom/oplus/app/OplusAppInfo;
    iget-object v4, v3, Lcom/oplus/app/OplusAppInfo;->topActivity:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .local v4, "co":Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    .line 348
    move-object v0, v4

    .line 349
    goto :goto_1

    .line 344
    .end local v3    # "info":Lcom/oplus/app/OplusAppInfo;
    .end local v4    # "co":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "listAppInfo":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusAppInfo;>;"
    .end local v2    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 353
    :catch_0
    move-exception v1

    .line 356
    :goto_2
    return-object v0
.end method

.method public whitelist getTopPackage()Ljava/lang/String;
    .locals 5

    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getAllTopPkgName"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 363
    .local v2, "getAllTopPkgName":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 364
    iget-object v3, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mActivityManager:Landroid/app/ActivityManager;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 367
    .end local v2    # "getAllTopPkgName":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 365
    :catch_0
    move-exception v2

    .line 368
    :goto_0
    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 370
    .local v2, "size":I
    if-lez v2, :cond_0

    .line 371
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 374
    .end local v2    # "size":I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist injectInputBegin()V
    .locals 5

    .line 238
    const-string v0, "LongshotDump"

    :try_start_0
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v1}, Landroid/view/OplusWindowManager;->longshotInjectInputBegin()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 240
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectInputBegin : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 244
    :goto_1
    return-void
.end method

.method public whitelist injectInputEnd()V
    .locals 5

    .line 249
    const-string v0, "LongshotDump"

    :try_start_0
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v1}, Landroid/view/OplusWindowManager;->longshotInjectInputEnd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 250
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 251
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectInputEnd : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 255
    :goto_1
    return-void
.end method

.method public whitelist injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 226
    const-string v0, "LongshotDump"

    :try_start_0
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v1, p1, p2}, Landroid/view/OplusWindowManager;->longshotInjectInput(Landroid/view/InputEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 228
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectInputEvent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 231
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 232
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isInMultiWindowMode()Z
    .locals 6

    .line 91
    const-string v0, "LongshotDump"

    const/4 v1, -0x1

    .line 93
    .local v1, "dockSide":I
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 94
    .local v2, "wm":Landroid/view/IWindowManager;
    invoke-interface {v2}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 99
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :goto_0
    goto :goto_1

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 96
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInMultiWindowMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 100
    :goto_1
    const/4 v0, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public whitelist isInputShow()Z
    .locals 6

    .line 138
    const-string v0, "LongshotDump"

    const/4 v1, 0x0

    .line 140
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v2}, Landroid/view/OplusWindowManager;->isInputShow()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 145
    :goto_0
    goto :goto_1

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 142
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInputShow : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 146
    :goto_1
    return v1
.end method

.method public whitelist isKeyguardShowingAndNotOccluded()Z
    .locals 6

    .line 198
    const-string v0, "LongshotDump"

    const/4 v1, 0x0

    .line 200
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v2}, Landroid/view/OplusWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 205
    :goto_0
    goto :goto_1

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 201
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 202
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKeyguardShowingAndNotOccluded : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 206
    :goto_1
    return v1
.end method

.method public whitelist isNavigationBarVisible()Z
    .locals 6

    .line 186
    const-string v0, "LongshotDump"

    const/4 v1, 0x0

    .line 188
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v2}, Landroid/view/OplusWindowManager;->isNavigationBarVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 193
    :goto_0
    goto :goto_1

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 189
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 190
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNavigationBarVisible : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 194
    :goto_1
    return v1
.end method

.method public whitelist isShortcutsPanelShow()Z
    .locals 6

    .line 162
    const-string v0, "LongshotDump"

    const/4 v1, 0x0

    .line 164
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v2}, Landroid/view/OplusWindowManager;->isShortcutsPanelShow()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 169
    :goto_0
    goto :goto_1

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 165
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 166
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShortcutsPanelShow : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 170
    :goto_1
    return v1
.end method

.method public whitelist isStatusBarVisible()Z
    .locals 6

    .line 174
    const-string v0, "LongshotDump"

    const/4 v1, 0x0

    .line 176
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v2}, Landroid/view/OplusWindowManager;->isStatusBarVisible()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 181
    :goto_0
    goto :goto_1

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 177
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 178
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isStatusBarVisible : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 182
    :goto_1
    return v1
.end method

.method public whitelist isVolumeShow()Z
    .locals 6

    .line 150
    const-string v0, "LongshotDump"

    const/4 v1, 0x0

    .line 152
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v2}, Landroid/view/OplusWindowManager;->isVolumeShow()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 157
    :goto_0
    goto :goto_1

    .line 155
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 154
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVolumeShow : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 158
    :goto_1
    return v1
.end method

.method public whitelist longshotNotifyConnected(Z)V
    .locals 5
    .param p1, "isConnected"    # Z

    .line 105
    const-string v0, "LongshotDump"

    :try_start_0
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mOplusWindowManager:Landroid/view/OplusWindowManager;

    invoke-virtual {v1, p1}, Landroid/view/OplusWindowManager;->longshotNotifyConnected(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 107
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotCompatible;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "longshotNotifyConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 111
    :goto_1
    return-void
.end method

.method public whitelist removeStageProtectInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotCompatible;->mWhiteListManager:Landroid/app/OplusWhiteListManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusWhiteListManager;->removeStageProtectInfo(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public whitelist setShortcutsPanelState(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 309
    return-void
.end method

.method public whitelist showNavigationBar(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 302
    return-void
.end method
