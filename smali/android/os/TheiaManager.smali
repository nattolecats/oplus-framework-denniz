.class public Landroid/os/TheiaManager;
.super Ljava/lang/Object;
.source "TheiaManager.java"


# static fields
.field private static final blacklist CODE_THEIA_SEND_FRAMEWORK_EVENT:I = 0x1

.field public static final blacklist TAG:Ljava/lang/String; = "TheiaManager"

.field private static final blacklist THEIA_DEAMON_SERVICE:Ljava/lang/String; = "TheiaBinderService"

.field private static final blacklist THEIA_DEAMON_TOKEN:Ljava/lang/String; = "TheiaBinder"

.field private static final blacklist THEIA_EVENT_CLASS_AMS:I = 0x0

.field private static final blacklist THEIA_EVENT_CLASS_LAUNCHER:I = 0x6

.field private static final blacklist THEIA_EVENT_CLASS_POWER:I = 0x2

.field private static final blacklist THEIA_EVENT_CLASS_SYSTEMUI:I = 0x7

.field private static final blacklist THEIA_EVENT_CLASS_SYSTEM_SERVER:I = 0x3

.field private static final blacklist THEIA_EVENT_CLASS_TRIGGER_ERROR_UPLOAD:I = 0xe

.field private static final blacklist THEIA_EVENT_CLASS_USER_PANIC:I = 0xf

.field private static final blacklist THEIA_EVENT_CLASS_WMS:I = 0x1

.field private static blacklist mTheiaDeamon:Landroid/os/IBinder;

.field private static blacklist sInstance:Landroid/os/TheiaManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Landroid/os/TheiaManager;->mTheiaDeamon:Landroid/os/IBinder;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Landroid/os/TheiaManager;->mTheiaDeamon:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 44
    const-string v0, "TheiaBinderService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Landroid/os/TheiaManager;->mTheiaDeamon:Landroid/os/IBinder;

    .line 46
    :cond_0
    return-void
.end method

.method public static blacklist getInstance()Landroid/os/TheiaManager;
    .locals 2

    .line 49
    sget-object v0, Landroid/os/TheiaManager;->sInstance:Landroid/os/TheiaManager;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Landroid/os/TheiaManager;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Landroid/os/TheiaManager;->sInstance:Landroid/os/TheiaManager;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Landroid/os/TheiaManager;

    invoke-direct {v1}, Landroid/os/TheiaManager;-><init>()V

    sput-object v1, Landroid/os/TheiaManager;->sInstance:Landroid/os/TheiaManager;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/TheiaManager;->sInstance:Landroid/os/TheiaManager;

    return-object v0
.end method

.method private blacklist sendEventInner(Landroid/os/TheiaEventInfo;)V
    .locals 5
    .param p1, "te"    # Landroid/os/TheiaEventInfo;

    .line 66
    sget-object v0, Landroid/os/TheiaManager;->mTheiaDeamon:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 67
    const-string v0, "TheiaBinderService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Landroid/os/TheiaManager;->mTheiaDeamon:Landroid/os/IBinder;

    .line 69
    :cond_0
    sget-object v0, Landroid/os/TheiaManager;->mTheiaDeamon:Landroid/os/IBinder;

    const-string v1, "TheiaManager"

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 70
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 71
    .local v0, "data":Landroid/os/Parcel;
    const-string v2, "TheiaBinder"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 72
    iget-wide v2, p1, Landroid/os/TheiaEventInfo;->mTheiaID:J

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v2, p1, Landroid/os/TheiaEventInfo;->mTimeStamp:J

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-object v2, p1, Landroid/os/TheiaEventInfo;->mLogInfo:Landroid/os/TheiaLogInfo;

    invoke-virtual {v2}, Landroid/os/TheiaLogInfo;->getValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget v2, p1, Landroid/os/TheiaEventInfo;->mPid:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v2, p1, Landroid/os/TheiaEventInfo;->mUid:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v2, p1, Landroid/os/TheiaEventInfo;->mExtraInfo:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p1, Landroid/os/TheiaEventInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/TheiaEventInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :try_start_0
    sget-object v2, Landroid/os/TheiaManager;->mTheiaDeamon:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    nop

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 87
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "sendEvent failed"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    nop

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 88
    .end local v0    # "data":Landroid/os/Parcel;
    :goto_1
    goto :goto_3

    .line 86
    .restart local v0    # "data":Landroid/os/Parcel;
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 87
    throw v1

    .line 89
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_2
    const-string v0, "get TheiaBinderService Service failed"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_3
    return-void
.end method


# virtual methods
.method public blacklist sendEvent(Landroid/os/TheiaEventInfo;)V
    .locals 3
    .param p1, "te"    # Landroid/os/TheiaEventInfo;

    .line 60
    const-wide/16 v0, 0x40

    const-string v2, "Theia-sendEvent"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Landroid/os/TheiaManager;->sendEventInner(Landroid/os/TheiaEventInfo;)V

    .line 62
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 63
    return-void
.end method
