.class public Landroid/hardware/fingerprint/OplusFingerprintManager;
.super Ljava/lang/Object;
.source "OplusFingerprintManager.java"

# interfaces
.implements Landroid/hardware/fingerprint/OplusBiometricFingerprintConstantsEx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/OplusFingerprintManager$OnAuthenticationCancelListener;,
        Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;,
        Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintInputCallback;,
        Landroid/hardware/fingerprint/OplusFingerprintManager$OnTouchEventMonitorCancelListener;,
        Landroid/hardware/fingerprint/OplusFingerprintManager$OnEngineeringMonitorCancelListener;,
        Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintExtraInfoCallback;,
        Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;
    }
.end annotation


# static fields
.field private static final blacklist BIOMETRICS_FINGERPRINTMANAGER_CLASS:Ljava/lang/String; = "android.hardware.fingerprint.FingerprintManager"

.field private static final blacklist FIELD_AUTHENTICATE_CALLBACK:Ljava/lang/String; = "mAuthenticationCallback"

.field private static final blacklist FIELD_SERVICE_RECEIVER:Ljava/lang/String; = "mServiceReceiver"

.field private static final blacklist IOplusFingerprintManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/hardware/fingerprint/IOplusFingerprintManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MOTHED_USE_HANDLER:Ljava/lang/String; = "useHandler"

.field private static final blacklist MSG_ERROR:I = 0x68

.field private static final blacklist TAG:Ljava/lang/String; = "Biometrics/Fingerprint21/OplusFingerprintManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mFingerprintExtraInfoCallback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintExtraInfoCallback;

.field private blacklist mFingerprintInputCallback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintInputCallback;

.field private blacklist mHandler:Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;

.field private blacklist mRemote:Landroid/os/IBinder;

.field private blacklist mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private blacklist mServiceReceiver:Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/fingerprint/OplusFingerprintManager;)Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mHandler:Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthenticationFido(Landroid/hardware/fingerprint/OplusFingerprintManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/OplusFingerprintManager;->cancelAuthenticationFido(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorResult(Landroid/hardware/fingerprint/OplusFingerprintManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/OplusFingerprintManager;->sendErrorResult(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendFingerprintEngineeringInfo(Landroid/hardware/fingerprint/OplusFingerprintManager;Landroid/hardware/fingerprint/EngineeringInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/OplusFingerprintManager;->sendFingerprintEngineeringInfo(Landroid/hardware/fingerprint/EngineeringInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendTouchDownEvent(Landroid/hardware/fingerprint/OplusFingerprintManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/OplusFingerprintManager;->sendTouchDownEvent(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendTouchUpEvent(Landroid/hardware/fingerprint/OplusFingerprintManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/OplusFingerprintManager;->sendTouchUpEvent(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Landroid/hardware/fingerprint/OplusFingerprintManager$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/OplusFingerprintManager$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/OplusFingerprintManager;->IOplusFingerprintManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mToken:Landroid/os/IBinder;

    .line 456
    new-instance v0, Landroid/hardware/fingerprint/OplusFingerprintManager$4;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/OplusFingerprintManager$4;-><init>(Landroid/hardware/fingerprint/OplusFingerprintManager;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;

    .line 73
    iput-object p1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    .line 74
    if-eqz p1, :cond_0

    .line 75
    new-instance v0, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/OplusFingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler-IA;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mHandler:Landroid/hardware/fingerprint/OplusFingerprintManager$MyHandler;

    .line 77
    :cond_0
    invoke-direct {p0}, Landroid/hardware/fingerprint/OplusFingerprintManager;->ensureRemoteFingerprintService()V

    .line 78
    return-void
.end method

.method private blacklist cancelAuthenticationFido(J)V
    .locals 8
    .param p1, "requestId"    # J

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAuthenticationFido called by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AttributionTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    .line 601
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    const-string v1, "Biometrics/Fingerprint21/OplusFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v2, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    .line 605
    :try_start_0
    iget-object v3, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    .line 606
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 605
    move-wide v6, p1

    invoke-interface/range {v2 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception in setTouchEventListener(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist ensureRemoteFingerprintService()V
    .locals 2

    .line 81
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mRemote:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mRemote:Landroid/os/IBinder;

    .line 83
    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRemote:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mRemote:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/Fingerprint21/OplusFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    return-void
.end method

.method public static whitelist getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;
    .locals 1

    .line 56
    sget-object v0, Landroid/hardware/fingerprint/OplusFingerprintManager;->IOplusFingerprintManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/IOplusFingerprintManager;

    return-object v0
.end method

.method private blacklist sendErrorResult(II)V
    .locals 3
    .param p1, "errMsgId"    # I
    .param p2, "vendorCode"    # I

    .line 513
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 514
    add-int/lit16 v0, p2, 0x3e8

    goto :goto_0

    :cond_0
    move v0, p1

    .line 515
    .local v0, "clientErrMsgId":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mFingerprintExtraInfoCallback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintExtraInfoCallback;

    if-eqz v1, :cond_1

    .line 516
    iget-object v2, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintExtraInfoCallback;->onError(ILjava/lang/CharSequence;)V

    .line 519
    :cond_1
    return-void
.end method

.method private blacklist sendFingerprintEngineeringInfo(Landroid/hardware/fingerprint/EngineeringInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/hardware/fingerprint/EngineeringInfo;

    .line 534
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    const-string v1, "sendFingerprintEngineeringInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mFingerprintExtraInfoCallback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintExtraInfoCallback;

    if-eqz v0, :cond_0

    .line 536
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintExtraInfoCallback;->onFingerprintEngineeringInfoUpdated(Landroid/hardware/fingerprint/EngineeringInfo;)V

    .line 538
    :cond_0
    return-void
.end method

.method private blacklist sendTouchDownEvent(I)V
    .locals 1
    .param p1, "sensorId"    # I

    .line 522
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mFingerprintInputCallback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintInputCallback;

    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v0}, Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintInputCallback;->onTouchDown()V

    .line 525
    :cond_0
    return-void
.end method

.method private blacklist sendTouchUpEvent(I)V
    .locals 1
    .param p1, "sensorId"    # I

    .line 528
    iget-object v0, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mFingerprintInputCallback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintInputCallback;

    if-eqz v0, :cond_0

    .line 529
    invoke-interface {v0}, Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintInputCallback;->onTouchUp()V

    .line 531
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist authenticateFido(JLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 18
    .param p1, "challenge"    # J
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "flags"    # I
    .param p5, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p6, "handler"    # Landroid/os/Handler;

    .line 542
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const-string v0, "android.hardware.fingerprint.FingerprintManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authenticateFido called by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AttributionTag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    .line 543
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 542
    const-string v5, "Biometrics/Fingerprint21/OplusFingerprintManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v4, v1, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    .line 545
    const-string v6, "fingerprint"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    .line 546
    .local v4, "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    iget-object v6, v1, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 547
    .local v6, "userId":I
    if-eqz v3, :cond_4

    .line 551
    if-eqz v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 552
    const-string v0, "authentication already canceled"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void

    .line 556
    :cond_0
    const/4 v7, 0x0

    const/4 v15, 0x1

    if-eqz p4, :cond_1

    move/from16 v16, v15

    goto :goto_0

    :cond_1
    move/from16 v16, v7

    .line 558
    .local v16, "ignoreEnrollmentState":Z
    :goto_0
    :try_start_0
    const-string v8, "useHandler"

    new-array v9, v15, [Ljava/lang/Class;

    const-class v10, Landroid/os/Handler;

    aput-object v10, v9, v7

    new-array v10, v15, [Ljava/lang/Object;

    aput-object p6, v10, v7

    invoke-static {v4, v0, v8, v9, v10}, Landroid/hardware/fingerprint/util/OplusFingerprintSupportUtils;->invokeDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v7, "mAuthenticationCallback"

    invoke-static {v4, v0, v7, v3}, Landroid/hardware/fingerprint/util/OplusFingerprintSupportUtils;->setDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    const-string v7, "mServiceReceiver"

    .line 565
    invoke-static {v4, v0, v7}, Landroid/hardware/fingerprint/util/OplusFingerprintSupportUtils;->getDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 569
    .local v13, "mServiceReceiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    iget-object v7, v1, Landroid/hardware/fingerprint/OplusFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v7, :cond_2

    .line 570
    iget-object v8, v1, Landroid/hardware/fingerprint/OplusFingerprintManager;->mToken:Landroid/os/IBinder;

    const/4 v11, -0x1

    iget-object v0, v1, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    .line 571
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 570
    move-wide/from16 v9, p1

    move v12, v6

    move-object/from16 v17, v4

    move v4, v15

    .end local v4    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .local v17, "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    move-object v15, v0

    :try_start_1
    invoke-interface/range {v7 .. v16}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v7

    .line 572
    .local v7, "authId":J
    if-eqz v2, :cond_3

    .line 573
    new-instance v0, Landroid/hardware/fingerprint/OplusFingerprintManager$OnAuthenticationCancelListener;

    invoke-direct {v0, v1, v7, v8}, Landroid/hardware/fingerprint/OplusFingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/OplusFingerprintManager;J)V

    invoke-virtual {v2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 577
    .end local v7    # "authId":J
    .end local v13    # "mServiceReceiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 569
    .end local v17    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .restart local v4    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .restart local v13    # "mServiceReceiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    :cond_2
    move-object/from16 v17, v4

    .line 583
    .end local v4    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v13    # "mServiceReceiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .restart local v17    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_3
    :goto_1
    goto :goto_3

    .line 577
    .end local v17    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .restart local v4    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    move v4, v15

    .line 578
    .end local v4    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :goto_2
    const-string v7, "Remote exception while authenticating: "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    iget-object v5, v1, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    const v7, 0x10403f4

    .line 582
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 581
    invoke-virtual {v3, v4, v5}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 584
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void

    .line 548
    .end local v16    # "ignoreEnrollmentState":Z
    .end local v17    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .restart local v4    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_4
    move-object/from16 v17, v4

    .end local v4    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .restart local v17    # "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must supply an authentication callback"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist cancelGetFingerprintExtraInfo(J)V
    .locals 7
    .param p1, "requestId"    # J

    .line 308
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    move-wide v5, p1

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->cancelFingerprintExtraInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mFingerprintExtraInfoCallback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintExtraInfoCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 310
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 311
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception in cancelGetFingerprintExtraInfo(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 315
    :goto_1
    return-void
.end method

.method public whitelist cancelTouchEventListener(J)V
    .locals 7
    .param p1, "requestId"    # J

    .line 363
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    move-wide v5, p1

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->cancelTouchEventListener(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V

    .line 364
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mFingerprintInputCallback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintInputCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 365
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 366
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception in setTouchEventListener(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 370
    :goto_1
    return-void
.end method

.method public whitelist continueEnroll(I)I
    .locals 5
    .param p1, "sensorId"    # I

    .line 187
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    const/4 v1, 0x0

    .line 189
    .local v1, "result":I
    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->continueEnroll(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 194
    :goto_0
    goto :goto_1

    .line 192
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 191
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continueEnroll : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 195
    :goto_1
    return v1
.end method

.method public whitelist getCurrentIconStatus()I
    .locals 5

    .line 414
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    const/4 v1, -0x1

    .line 416
    .local v1, "res":I
    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->getCurrentIconStatus(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 421
    :goto_0
    goto :goto_1

    .line 419
    :catch_0
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 417
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 418
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception in getCurrentIconStatus(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 422
    :goto_1
    return v1
.end method

.method public whitelist getEnrollmentTotalTimes(I)I
    .locals 5
    .param p1, "sensorId"    # I

    .line 203
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    const/4 v1, 0x0

    .line 205
    .local v1, "result":I
    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->getEnrollmentTotalTimes(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 210
    :goto_0
    goto :goto_1

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 207
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnrollmentTotalTimes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 211
    :goto_1
    return v1
.end method

.method public whitelist getFailedAttempts()I
    .locals 5

    .line 227
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    const/4 v1, -0x1

    .line 229
    .local v1, "result":I
    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->getFailedAttempts()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 234
    :goto_0
    goto :goto_1

    .line 232
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 230
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 231
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFailedAttempts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 235
    :goto_1
    return v1
.end method

.method public whitelist getFingerprintExtraInfo(Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintExtraInfoCallback;Landroid/os/CancellationSignal;II)V
    .locals 10
    .param p1, "callback"    # Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintExtraInfoCallback;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "type"    # I
    .param p4, "sensorId"    # I

    .line 280
    if-eqz p1, :cond_2

    .line 283
    iput-object p1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mFingerprintExtraInfoCallback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintExtraInfoCallback;

    .line 284
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void

    .line 289
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iget-object v7, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;

    .line 289
    move v8, p3

    move v9, p4

    invoke-interface/range {v2 .. v9}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->getFingerprintExtraInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ILandroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;II)J

    move-result-wide v1

    .line 291
    .local v1, "authId":J
    if-eqz p2, :cond_1

    .line 292
    new-instance v3, Landroid/hardware/fingerprint/OplusFingerprintManager$OnEngineeringMonitorCancelListener;

    invoke-direct {v3, p0, v1, v2}, Landroid/hardware/fingerprint/OplusFingerprintManager$OnEngineeringMonitorCancelListener;-><init>(Landroid/hardware/fingerprint/OplusFingerprintManager;J)V

    invoke-virtual {p2, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    .end local v1    # "authId":J
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 295
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception in getFingerprintExtraInfo(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    nop

    .line 299
    :goto_1
    return-void

    .line 281
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an getFingerprintExtraInfo callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLockoutAttemptDeadline(I)J
    .locals 6
    .param p1, "userId"    # I

    .line 215
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    const-wide/16 v1, -0x1

    .line 217
    .local v1, "result":J
    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->getLockoutAttemptDeadline(I)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v3

    .line 222
    :goto_0
    goto :goto_1

    .line 220
    :catch_0
    move-exception v3

    .line 221
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 218
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 219
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLockoutAttemptDeadline : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 223
    :goto_1
    return-wide v1
.end method

.method public whitelist hideFingerprintIcon()V
    .locals 4

    .line 398
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->hideFingerprintIcon(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 399
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 400
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception in hideFingerprintIcon(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 404
    :goto_1
    return-void
.end method

.method public whitelist needForceUseFingerprintFirst(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 433
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    const/4 v1, 0x0

    .line 435
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->needForceUseFingerprintFirst(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 440
    :goto_0
    goto :goto_1

    .line 438
    :catch_0
    move-exception v2

    .line 439
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 436
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 437
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needForceUseFingerprintFirst : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 441
    :goto_1
    return v1
.end method

.method public whitelist pauseEnroll(I)I
    .locals 5
    .param p1, "sensorId"    # I

    .line 171
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    const/4 v1, 0x0

    .line 173
    .local v1, "result":I
    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->pauseEnroll(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 178
    :goto_0
    goto :goto_1

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 175
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseEnroll : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 179
    :goto_1
    return v1
.end method

.method public whitelist regsiterFingerprintCmdCallback(Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;)I
    .locals 6
    .param p1, "callback"    # Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;

    .line 120
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    const/4 v1, -0x1

    .line 121
    .local v1, "res":I
    new-instance v2, Landroid/hardware/fingerprint/OplusFingerprintManager$2;

    invoke-direct {v2, p0, p1}, Landroid/hardware/fingerprint/OplusFingerprintManager$2;-><init>(Landroid/hardware/fingerprint/OplusFingerprintManager;Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;)V

    .line 128
    .local v2, "mIFingerprintCommandCallback":Landroid/hardware/fingerprint/IFingerprintCommandCallback;
    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->regsiterFingerprintCmdCallback(Landroid/hardware/fingerprint/IFingerprintCommandCallback;)I

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
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 130
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "regsiterFingerprintCmdCallback : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 134
    :goto_1
    return v1
.end method

.method public whitelist sendFingerprintCmd(II[B)I
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "cmdId"    # I
    .param p3, "inbuf"    # [B

    .line 239
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    const/4 v1, -0x1

    .line 241
    .local v1, "res":I
    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->sendFingerprintCmd(II[B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 246
    :goto_0
    goto :goto_1

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 242
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 243
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception in sendFingerprintCmd(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 247
    :goto_1
    return v1
.end method

.method public whitelist setFingerKeymode(II)V
    .locals 4
    .param p1, "enable"    # I
    .param p2, "sensorId"    # I

    .line 158
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->setFingerKeymode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 160
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFingerKeymode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 164
    :goto_1
    return-void
.end method

.method public whitelist setTouchEventListener(Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintInputCallback;Landroid/os/CancellationSignal;I)V
    .locals 9
    .param p1, "callback"    # Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintInputCallback;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "sensorId"    # I

    .line 335
    if-eqz p1, :cond_2

    .line 338
    iput-object p1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mFingerprintInputCallback:Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintInputCallback;

    .line 339
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 344
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    .line 345
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iget-object v7, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;

    .line 344
    move v8, p3

    invoke-interface/range {v2 .. v8}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->setTouchEventListener(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ILandroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;I)J

    move-result-wide v1

    .line 346
    .local v1, "authId":J
    if-eqz p2, :cond_1

    .line 347
    new-instance v3, Landroid/hardware/fingerprint/OplusFingerprintManager$OnTouchEventMonitorCancelListener;

    invoke-direct {v3, p0, v1, v2}, Landroid/hardware/fingerprint/OplusFingerprintManager$OnTouchEventMonitorCancelListener;-><init>(Landroid/hardware/fingerprint/OplusFingerprintManager;J)V

    invoke-virtual {p2, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    .end local v1    # "authId":J
    :catch_0
    move-exception v1

    .line 352
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 349
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 350
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception in setTouchEventListener(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    nop

    .line 354
    :goto_1
    return-void

    .line 336
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an setTouchEventListener callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist showFingerprintIcon()V
    .locals 4

    .line 381
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/fingerprint/OplusFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->showFingerprintIcon(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 383
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception in showFingerprintIcon(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 387
    :goto_1
    return-void
.end method

.method public whitelist unregsiterFingerprintCmdCallback(Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;)I
    .locals 6
    .param p1, "callback"    # Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;

    .line 138
    const-string v0, "Biometrics/Fingerprint21/OplusFingerprintManager"

    const/4 v1, -0x1

    .line 139
    .local v1, "res":I
    new-instance v2, Landroid/hardware/fingerprint/OplusFingerprintManager$3;

    invoke-direct {v2, p0, p1}, Landroid/hardware/fingerprint/OplusFingerprintManager$3;-><init>(Landroid/hardware/fingerprint/OplusFingerprintManager;Landroid/hardware/fingerprint/OplusFingerprintManager$FingerprintCommandCallback;)V

    .line 146
    .local v2, "mIFingerprintCommandCallback":Landroid/hardware/fingerprint/IFingerprintCommandCallback;
    :try_start_0
    invoke-static {}, Landroid/hardware/fingerprint/OplusFingerprintManager;->getService()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/hardware/fingerprint/IOplusFingerprintManager;->unregsiterFingerprintCmdCallback(Landroid/hardware/fingerprint/IFingerprintCommandCallback;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 151
    :goto_0
    goto :goto_1

    .line 149
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 147
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 148
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregsiterFingerprintCmdCallback : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 152
    :goto_1
    return v1
.end method
