.class public Landroid/os/customize/OplusCustomizePhoneManager;
.super Ljava/lang/Object;
.source "OplusCustomizePhoneManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "OplusCustomizePhoneManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCustomizePhoneManager"

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist mServiceLock:Ljava/lang/Object;

.field private static volatile blacklist sInstance:Landroid/os/customize/OplusCustomizePhoneManager;


# instance fields
.field private blacklist mOplusCustomizePhoneManagerService:Landroid/os/customize/IOplusCustomizePhoneManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizePhoneManager;->mLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/customize/OplusCustomizePhoneManager;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    .line 47
    return-void
.end method

.method public static final whitelist getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizePhoneManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    sget-object v0, Landroid/os/customize/OplusCustomizePhoneManager;->sInstance:Landroid/os/customize/OplusCustomizePhoneManager;

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Landroid/os/customize/OplusCustomizePhoneManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Landroid/os/customize/OplusCustomizePhoneManager;->sInstance:Landroid/os/customize/OplusCustomizePhoneManager;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Landroid/os/customize/OplusCustomizePhoneManager;

    invoke-direct {v1}, Landroid/os/customize/OplusCustomizePhoneManager;-><init>()V

    sput-object v1, Landroid/os/customize/OplusCustomizePhoneManager;->sInstance:Landroid/os/customize/OplusCustomizePhoneManager;

    .line 55
    :cond_0
    sget-object v1, Landroid/os/customize/OplusCustomizePhoneManager;->sInstance:Landroid/os/customize/OplusCustomizePhoneManager;

    monitor-exit v0

    return-object v1

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 58
    :cond_1
    sget-object v0, Landroid/os/customize/OplusCustomizePhoneManager;->sInstance:Landroid/os/customize/OplusCustomizePhoneManager;

    return-object v0
.end method

.method private blacklist getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;
    .locals 3

    .line 62
    sget-object v0, Landroid/os/customize/OplusCustomizePhoneManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizePhoneManager;->mOplusCustomizePhoneManagerService:Landroid/os/customize/IOplusCustomizePhoneManagerService;

    if-nez v1, :cond_0

    .line 64
    invoke-static {}, Landroid/os/customize/OplusCustomizeManager;->getInstance()Landroid/os/customize/OplusCustomizeManager;

    move-result-object v1

    const-string v2, "OplusCustomizePhoneManagerService"

    invoke-virtual {v1, v2}, Landroid/os/customize/OplusCustomizeManager;->getDeviceManagerServiceByName(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/customize/IOplusCustomizePhoneManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v1

    iput-object v1, p0, Landroid/os/customize/OplusCustomizePhoneManager;->mOplusCustomizePhoneManagerService:Landroid/os/customize/IOplusCustomizePhoneManagerService;

    .line 66
    :cond_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizePhoneManager;->mOplusCustomizePhoneManagerService:Landroid/os/customize/IOplusCustomizePhoneManagerService;

    monitor-exit v0

    return-object v1

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addPreciseCallStateChangedCallback(Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;

    .line 705
    const-string v0, "OplusCustomizePhoneManager"

    const-string v1, "addPreciseCallStateChangedCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->addPreciseCallStateChangedCallback(Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    goto :goto_0

    .line 708
    :catchall_0
    move-exception v1

    .line 709
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPreciseCallStateChangedCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public whitelist answerRingingCall()V
    .locals 4

    .line 694
    const-string v0, "answerRingingCall Error"

    const-string v1, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    :catch_0
    move-exception v2

    .line 698
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 695
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 696
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 700
    :goto_1
    return-void
.end method

.method public whitelist endCall(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 449
    const-string v0, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v1

    .line 450
    .local v1, "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    if-eqz v1, :cond_0

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mdm service IOplusCustomizePhoneManagerService service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->endCall(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 454
    :cond_0
    const-string v2, "mdm service IOplusCustomizePhoneManagerService service is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1    # "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    :goto_0
    goto :goto_1

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "endCall error!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 460
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public whitelist getDefaultVoiceCard(Landroid/content/ComponentName;)I
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 638
    const-string v0, "OplusCustomizePhoneManager"

    const/4 v1, -0x1

    .line 640
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    .line 641
    .local v2, "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    if-eqz v2, :cond_0

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mdm service IOplusCustomizePhoneManagerService service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->getDefaultVoiceCard(Landroid/content/ComponentName;)I

    move-result v0

    move v1, v0

    .end local v1    # "result":I
    .local v0, "result":I
    goto :goto_0

    .line 645
    .end local v0    # "result":I
    .restart local v1    # "result":I
    :cond_0
    const-string v3, "mdm service IOplusCustomizePhoneManagerService service is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .end local v2    # "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    :goto_0
    goto :goto_1

    .line 647
    :catch_0
    move-exception v2

    .line 648
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getDefaultVoiceCard RemoteException error!"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v1
.end method

.method public whitelist getPropSetNonEmergencyCallDisabled()Z
    .locals 5

    .line 84
    const-string v0, "getPropSetNonEmergencyCallDisabled Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->getPropSetNonEmergencyCallDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 88
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v2

    .line 85
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 86
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v2
.end method

.method public whitelist getSlot1SmsLimitation(Landroid/content/ComponentName;Z)I
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "isOutgoing"    # Z

    .line 309
    const-string v0, "getSlot1SmsLimitation Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, -0x1

    .line 311
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->getSlot1SmsLimitation(Landroid/content/ComponentName;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 316
    :goto_0
    goto :goto_1

    .line 314
    :catch_0
    move-exception v3

    .line 315
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 313
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 317
    :goto_1
    return v2
.end method

.method public whitelist getSlot1SmsReceiveDisabled()Ljava/lang/String;
    .locals 4

    .line 355
    const-string v0, "1"

    .line 357
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizePhoneManager;->mOplusCustomizePhoneManagerService:Landroid/os/customize/IOplusCustomizePhoneManagerService;

    if-eqz v1, :cond_0

    .line 358
    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->getSlot1SmsReceiveDisabled()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 362
    :cond_0
    goto :goto_0

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizePhoneManager"

    const-string v3, "getSlot1SmsReceiveDisabled error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getSlot1SmsSendDisabled()Ljava/lang/String;
    .locals 4

    .line 379
    const-string v0, "1"

    .line 381
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizePhoneManager;->mOplusCustomizePhoneManagerService:Landroid/os/customize/IOplusCustomizePhoneManagerService;

    if-eqz v1, :cond_0

    .line 382
    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->getSlot1SmsSendDisabled()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 386
    :cond_0
    goto :goto_0

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizePhoneManager"

    const-string v3, "getSlot1SmsSendDisabled error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getSlot2SmsLimitation(Landroid/content/ComponentName;Z)I
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "isOutgoing"    # Z

    .line 322
    const-string v0, "getSlot2SmsLimitation Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, -0x1

    .line 324
    .local v2, "result":I
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->getSlot2SmsLimitation(Landroid/content/ComponentName;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 329
    :goto_0
    goto :goto_1

    .line 327
    :catch_0
    move-exception v3

    .line 328
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 325
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 326
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 330
    :goto_1
    return v2
.end method

.method public whitelist getSlot2SmsReceiveDisabled()Ljava/lang/String;
    .locals 4

    .line 367
    const-string v0, "1"

    .line 369
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizePhoneManager;->mOplusCustomizePhoneManagerService:Landroid/os/customize/IOplusCustomizePhoneManagerService;

    if-eqz v1, :cond_0

    .line 370
    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->getSlot2SmsReceiveDisabled()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 374
    :cond_0
    goto :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizePhoneManager"

    const-string v3, "getSlot2SmsReceiveDisabled error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getSlot2SmsSendDisabled()Ljava/lang/String;
    .locals 4

    .line 391
    const-string v0, "1"

    .line 393
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizePhoneManager;->mOplusCustomizePhoneManagerService:Landroid/os/customize/IOplusCustomizePhoneManagerService;

    if-eqz v1, :cond_0

    .line 394
    invoke-interface {v1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->getSlot2SmsSendDisabled()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 398
    :cond_0
    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizePhoneManager"

    const-string v3, "getSlot2SmsSendDisabled error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist isCallForwardSettingDisabled()Z
    .locals 5

    .line 108
    const-string v0, "isCallForwardSettingDisabled Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->isCallForwardSettingDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v2

    .line 109
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 110
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v2
.end method

.method public whitelist isEnablePhoneCallLimit(Z)Z
    .locals 5
    .param p1, "isOutgoing"    # Z

    .line 132
    const-string v0, "isEnablePhoneCallLimit Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->isEnablePhoneCallLimit(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 136
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v2

    .line 133
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 134
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v2
.end method

.method public whitelist isInComingThirdCallDisabled(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 581
    const-string v0, "OplusCustomizePhoneManager"

    const/4 v1, 0x0

    .line 583
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    .line 584
    .local v2, "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    if-eqz v2, :cond_0

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mdm service IOplusCustomizePhoneManagerService service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->isInComingThirdCallDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    move v1, v0

    .end local v1    # "result":Z
    .local v0, "result":Z
    goto :goto_0

    .line 588
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :cond_0
    const-string v3, "mdm service IOplusCustomizePhoneManagerService service is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v2    # "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    :goto_0
    goto :goto_1

    .line 598
    :catch_0
    move-exception v2

    .line 599
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "isInComingThirdCallDisabled Error"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 590
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 591
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isInComingThirdCallDisabled error!"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 603
    :goto_1
    return v1
.end method

.method public whitelist isRoamingCallDisabled(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 548
    const-string v0, "OplusCustomizePhoneManager"

    const/4 v1, 0x0

    .line 550
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    .line 551
    .local v2, "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    if-eqz v2, :cond_0

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mdm service IOplusCustomizePhoneManagerService service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->isRoamingCallDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    move v1, v0

    .end local v1    # "result":Z
    .local v0, "result":Z
    goto :goto_0

    .line 555
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :cond_0
    const-string v3, "mdm service IOplusCustomizePhoneManagerService manager is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v2    # "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    :goto_0
    goto :goto_1

    .line 557
    :catch_0
    move-exception v2

    .line 558
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "isRoamingCallDisabled error : RemoteException"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v1
.end method

.method public whitelist isSlotDisabled(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "slotId"    # I

    .line 684
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->isSlotDisabled(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSlotDisabled Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizePhoneManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isSlotTwoDisabled()Z
    .locals 3

    .line 664
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->isSlotTwoDisabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSlotTwoDisabled Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizePhoneManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist propEnablePhoneCallLimit(ZZ)Z
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "isOutgoing"    # Z

    .line 120
    const-string v0, "propEnablePhoneCallLimit Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->propEnablePhoneCallLimit(ZZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 124
    :catch_0
    move-exception v3

    .line 125
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v2

    .line 121
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 122
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v2
.end method

.method public whitelist propGetPhoneCallLimitation(Z)I
    .locals 5
    .param p1, "isOutgoing"    # Z

    .line 157
    const-string v0, "propGetPhoneCallLimitation Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->propGetPhoneCallLimitation(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 161
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v2

    .line 158
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 159
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v2
.end method

.method public whitelist propGetSms1LimitationTime(Z)J
    .locals 6
    .param p1, "isOutgoing"    # Z

    .line 217
    const-string v0, "propGetSms1LimitationTime Error"

    const-string v1, "OplusCustomizePhoneManager"

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->propGetSms1LimitationTime(Z)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 221
    :catch_0
    move-exception v4

    .line 222
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-wide v2

    .line 218
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 219
    .local v4, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-wide v2
.end method

.method public whitelist propGetSms2LimitationTime(Z)J
    .locals 6
    .param p1, "isOutgoing"    # Z

    .line 229
    const-string v0, "propGetSms2LimitationTime Error"

    const-string v1, "OplusCustomizePhoneManager"

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->propGetSms2LimitationTime(Z)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 233
    :catch_0
    move-exception v4

    .line 234
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-wide v2

    .line 230
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 231
    .local v4, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-wide v2
.end method

.method public whitelist propRemoveCallLimitation(Z)Z
    .locals 5
    .param p1, "isOutgoing"    # Z

    .line 169
    const-string v0, "propRemoveCallLimitation Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->propRemoveCallLimitation(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 173
    :catch_0
    move-exception v3

    .line 174
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v2

    .line 170
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 171
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v2
.end method

.method public whitelist propSetCallForwardSettingDisabled(Z)Z
    .locals 5
    .param p1, "disable"    # Z

    .line 96
    const-string v0, "propSetForwardCallSettingDisabled Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->propSetCallForwardSettingDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 100
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v2

    .line 97
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 98
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v2
.end method

.method public whitelist propSetCallLimitTime(ZI)Z
    .locals 5
    .param p1, "isOutgoing"    # Z
    .param p2, "dateType"    # I

    .line 181
    const-string v0, "propSetCallLimitTime Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->propSetCallLimitTime(ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 185
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v2

    .line 182
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 183
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v2
.end method

.method public whitelist propSetNonEmergencyCallDisabled(Z)Z
    .locals 5
    .param p1, "disable"    # Z

    .line 72
    const-string v0, "propSetNonEmergencyCallDisabled Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->propSetNonEmergencyCallDisabled(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v2

    .line 73
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 74
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v2
.end method

.method public whitelist propSetPhoneCallLimitation(ZI)Z
    .locals 5
    .param p1, "isOutgoing"    # Z
    .param p2, "limitation"    # I

    .line 145
    const-string v0, "propSetPhoneCallLimitation Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->propSetPhoneCallLimitation(ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 149
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return v2

    .line 146
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 147
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v2
.end method

.method public whitelist removePreciseCallStateChangedCallback(Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;

    .line 714
    const-string v0, "OplusCustomizePhoneManager"

    const-string v1, "removePreciseCallStateChangedCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->removePreciseCallStateChangedCallback(Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    goto :goto_0

    .line 717
    :catchall_0
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePreciseCallStateChangedCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public whitelist removeSlot1SmsLimitation(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "isOutgoing"    # Z

    .line 335
    const-string v0, "removeSlot1SmsLimitation Error"

    const-string v1, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->removeSlot1SmsLimitation(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 336
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 337
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 341
    :goto_1
    return-void
.end method

.method public whitelist removeSlot2SmsLimitation(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "isOutgoing"    # Z

    .line 345
    const-string v0, "removeSlot2SmsLimitation Error"

    const-string v1, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->removeSlot2SmsLimitation(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 346
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 347
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 351
    :goto_1
    return-void
.end method

.method public whitelist removeSmsLimitation(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 300
    const-string v0, "removeSmsLimitation Error"

    const-string v1, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->removeSmsLimitation(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v2

    .line 304
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 302
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 306
    :goto_1
    return-void
.end method

.method public whitelist setDefaultVoiceCard(Landroid/content/ComponentName;ILandroid/os/Message;)Z
    .locals 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "slotId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 607
    const-string v0, "GENERIC_FAILURE"

    const-string v1, "EXCEPTION"

    const-string v2, "RESULT"

    const-string v3, "OplusCustomizePhoneManager"

    const/4 v4, 0x0

    .line 608
    .local v4, "result":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 610
    .local v5, "value":Z
    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v7

    .line 611
    .local v7, "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    if-eqz v7, :cond_1

    .line 612
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mdm service IDeviceRestrictionManager service:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-interface {v7, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setDefaultVoiceCard(Landroid/content/ComponentName;I)Landroid/os/Bundle;

    move-result-object v8

    move-object v4, v8

    .line 614
    if-eqz v4, :cond_0

    .line 615
    invoke-virtual {p3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 616
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    move v5, v8

    .line 617
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mdm setDefaultVoiceCard result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    :cond_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v4, v8

    .line 620
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 621
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 625
    :cond_1
    const-string v8, "mdm service IDeviceRestrictionManager manager is null"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .end local v7    # "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    :goto_0
    goto :goto_1

    .line 627
    :catch_0
    move-exception v7

    .line 628
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "setDefaultVoiceCard RemoteException error!"

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v4, v3

    .line 630
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 631
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 634
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_1
    return v5
.end method

.method public whitelist setIncomingThirdCallDisabled(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 564
    const-string v0, "OplusCustomizePhoneManager"

    const/4 v1, 0x0

    .line 566
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    .line 567
    .local v2, "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    if-eqz v2, :cond_0

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mdm service IOplusCustomizePhoneManagerService service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setIncomingThirdCallDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0

    move v1, v0

    .end local v1    # "result":Z
    .local v0, "result":Z
    goto :goto_0

    .line 571
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :cond_0
    const-string v3, "mdm service IOplusCustomizePhoneManagerService service is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v2    # "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    :goto_0
    goto :goto_1

    .line 573
    :catch_0
    move-exception v2

    .line 574
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setIncomingThirdCallDisabled error!"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 577
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v1
.end method

.method public whitelist setRoamingCallDisabled(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 531
    const-string v0, "OplusCustomizePhoneManager"

    const/4 v1, 0x0

    .line 533
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    .line 534
    .local v2, "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    if-eqz v2, :cond_0

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOplusCustomizePhoneManagerService, service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setRoamingCallDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0

    move v1, v0

    .end local v1    # "result":Z
    .local v0, "result":Z
    goto :goto_0

    .line 538
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :cond_0
    const-string v3, "IOplusCustomizePhoneManagerService service is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v2    # "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    :goto_0
    goto :goto_1

    .line 540
    :catch_0
    move-exception v2

    .line 541
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setRoamingCallDisabled error!"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 544
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v1
.end method

.method public whitelist setSlot1SmsLimitation(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "limitNumber"    # I

    .line 281
    const-string v0, "setSlot1SmsLimitation Error"

    const-string v1, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setSlot1SmsLimitation(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 282
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 283
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 287
    :goto_1
    return-void
.end method

.method public whitelist setSlot1SmsLimitation(Landroid/content/ComponentName;ZII)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "isOutgoing"    # Z
    .param p3, "dateType"    # I
    .param p4, "limitNumber"    # I

    .line 193
    const-string v0, "setSlot1SmsLimitation Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setSlotOneSmsLimitation(Landroid/content/ComponentName;ZII)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 197
    :catch_0
    move-exception v3

    .line 198
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v2

    .line 194
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 195
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return v2
.end method

.method public whitelist setSlot1SmsReceiveDisabled(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "openswitch"    # Z

    .line 252
    const-string v0, "setSlot1SmsReceiveDisabled Error"

    const-string v1, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setSlot1SmsReceiveDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 253
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 254
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 258
    :goto_1
    return-void
.end method

.method public whitelist setSlot1SmsSendDisabled(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "openswitch"    # Z

    .line 243
    const-string v0, "setSlot1SmsSendDisabled Error"

    const-string v1, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setSlot1SmsSendDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 245
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 249
    :goto_1
    return-void
.end method

.method public whitelist setSlot2SmsLimitation(Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "limitNumber"    # I

    .line 290
    const-string v0, "setSlot2SmsLimitation Error"

    const-string v1, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setSlot2SmsLimitation(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 291
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 292
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 296
    :goto_1
    return-void
.end method

.method public whitelist setSlot2SmsLimitation(Landroid/content/ComponentName;ZII)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "isOutgoing"    # Z
    .param p3, "dateType"    # I
    .param p4, "limitNumber"    # I

    .line 205
    const-string v0, "setSlot2SmsLimitation Error"

    const-string v1, "OplusCustomizePhoneManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setSlotTwoSmsLimitation(Landroid/content/ComponentName;ZII)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 209
    :catch_0
    move-exception v3

    .line 210
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v2

    .line 206
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 207
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v2
.end method

.method public whitelist setSlot2SmsReceiveDisabled(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "openswitch"    # Z

    .line 271
    const-string v0, "setSlot2SmsReceiveDisabled Error"

    const-string v1, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setSlot2SmsReceiveDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 272
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 273
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 277
    :goto_1
    return-void
.end method

.method public whitelist setSlot2SmsSendDisabled(Landroid/content/ComponentName;Z)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "openswitch"    # Z

    .line 261
    const-string v0, "setSlot2SmsSendDisabled Error"

    const-string v1, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setSlot2SmsSendDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 262
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 263
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 267
    :goto_1
    return-void
.end method

.method public whitelist setSlotDisabled(Landroid/content/ComponentName;IZ)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "slotId"    # I
    .param p3, "disabled"    # Z

    .line 675
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setSlotDisabled(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    nop

    .line 680
    return-void

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlotDisabled Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizePhoneManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method

.method public whitelist setSlotTwoDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z

    .line 655
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setSlotTwoDisabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    nop

    .line 660
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlotTwoDisabled Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCustomizePhoneManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void
.end method

.method public whitelist setVoiceIncomingDisabledforSlot1(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 463
    const-string v0, "OplusCustomizePhoneManager"

    const/4 v1, 0x0

    .line 465
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    .line 466
    .local v2, "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    if-eqz v2, :cond_0

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOplusCustomizePhoneManagerService, service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setVoiceIncomingDisabledforSlot1(Landroid/content/ComponentName;Z)Z

    move-result v0

    move v1, v0

    .end local v1    # "result":Z
    .local v0, "result":Z
    goto :goto_0

    .line 470
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :cond_0
    const-string v3, "IOplusCustomizePhoneManagerService service is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v2    # "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    :goto_0
    goto :goto_1

    .line 472
    :catch_0
    move-exception v2

    .line 473
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setVoiceIncomingDisabledforSlot1 error!"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 476
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v1
.end method

.method public whitelist setVoiceIncomingDisabledforSlot2(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 497
    const-string v0, "OplusCustomizePhoneManager"

    const/4 v1, 0x0

    .line 499
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    .line 500
    .local v2, "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    if-eqz v2, :cond_0

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOplusCustomizePhoneManagerService, service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setVoiceIncomingDisabledforSlot2(Landroid/content/ComponentName;Z)Z

    move-result v0

    move v1, v0

    .end local v1    # "result":Z
    .local v0, "result":Z
    goto :goto_0

    .line 504
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :cond_0
    const-string v3, "IOplusCustomizePhoneManagerService service is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v2    # "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    :goto_0
    goto :goto_1

    .line 506
    :catch_0
    move-exception v2

    .line 507
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setVoiceIncomingDisabledforSlot2 error!"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 510
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v1
.end method

.method public whitelist setVoiceOutgoingDisabledforSlot1(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 480
    const-string v0, "OplusCustomizePhoneManager"

    const/4 v1, 0x0

    .line 482
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    .line 483
    .local v2, "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    if-eqz v2, :cond_0

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOplusCustomizePhoneManagerService, service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setVoiceOutgoingDisabledforSlot1(Landroid/content/ComponentName;Z)Z

    move-result v0

    move v1, v0

    .end local v1    # "result":Z
    .local v0, "result":Z
    goto :goto_0

    .line 487
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :cond_0
    const-string v3, "IOplusCustomizePhoneManagerService service is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v2    # "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    :goto_0
    goto :goto_1

    .line 489
    :catch_0
    move-exception v2

    .line 490
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setVoiceIncomingDisabledforSlot1 error!"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 493
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v1
.end method

.method public whitelist setVoiceOutgoingDisabledforSlot2(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 514
    const-string v0, "OplusCustomizePhoneManager"

    const/4 v1, 0x0

    .line 516
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    .line 517
    .local v2, "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    if-eqz v2, :cond_0

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOplusCustomizePhoneManagerService, service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->setVoiceOutgoingDisabledforSlot2(Landroid/content/ComponentName;Z)Z

    move-result v0

    move v1, v0

    .end local v1    # "result":Z
    .local v0, "result":Z
    goto :goto_0

    .line 521
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    :cond_0
    const-string v3, "IOplusCustomizePhoneManagerService service is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v2    # "service":Landroid/os/customize/IOplusCustomizePhoneManagerService;
    :goto_0
    goto :goto_1

    .line 523
    :catch_0
    move-exception v2

    .line 524
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "setVoiceOutgoingDisabledforSlot2 error!"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 527
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v1
.end method

.method public whitelist showSlot1SmsTimes(Z)I
    .locals 4
    .param p1, "isOutgoing"    # Z

    .line 403
    const/4 v0, -0x1

    .line 405
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizePhoneManager;->mOplusCustomizePhoneManagerService:Landroid/os/customize/IOplusCustomizePhoneManagerService;

    if-eqz v1, :cond_0

    .line 406
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->showSlot1SmsTimes(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 410
    :cond_0
    goto :goto_0

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizePhoneManager"

    const-string v3, "showSlot1SmsTimes error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist showSlot2SmsTimes(Z)I
    .locals 4
    .param p1, "isOutgoing"    # Z

    .line 425
    const/4 v0, -0x1

    .line 427
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Landroid/os/customize/OplusCustomizePhoneManager;->mOplusCustomizePhoneManagerService:Landroid/os/customize/IOplusCustomizePhoneManagerService;

    if-eqz v1, :cond_0

    .line 428
    invoke-interface {v1, p1}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->showSlot2SmsTimes(Z)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 432
    :cond_0
    goto :goto_0

    .line 430
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCustomizePhoneManager"

    const-string v3, "showSlot2SmsTimes error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist storeSlot1SmsTimes(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "times"    # Ljava/lang/String;
    .param p2, "isOutgoing"    # Z

    .line 416
    const-string v0, "getSlot2SmsSendDisabled Error"

    const-string v1, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->storeSlot1SmsTimes(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 417
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 418
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 422
    :goto_1
    return-void
.end method

.method public whitelist storeSlot2SmsTimes(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "times"    # Ljava/lang/String;
    .param p2, "isOutgoing"    # Z

    .line 438
    const-string v0, "getSlot2SmsSendDisabled Error"

    const-string v1, "OplusCustomizePhoneManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/customize/OplusCustomizePhoneManager;->getOplusCustomizePhoneManagerService()Landroid/os/customize/IOplusCustomizePhoneManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/customize/IOplusCustomizePhoneManagerService;->storeSlot2SmsTimes(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v2

    .line 442
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 439
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 440
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 444
    :goto_1
    return-void
.end method
