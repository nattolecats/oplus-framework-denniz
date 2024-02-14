.class public Lcom/oplus/util/OplusHoraeThermalHelper;
.super Ljava/lang/Object;
.source "OplusHoraeThermalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;,
        Lcom/oplus/util/OplusHoraeThermalHelper$SingletonHolder;
    }
.end annotation


# static fields
.field private static final blacklist AMBIENTTHERMAL_TIME:I = 0x6

.field private static final blacklist BIND_PROCESS_TASKS:I = 0x65

.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.horae.IHoraeService"

.field private static final blacklist GET_ALL_SHELL_TEMPS:I = 0x15

.field private static final blacklist GET_AMBIENT_TEMP:I = 0x19

.field private static final blacklist GET_SAFETY_TYPE:I = 0x17

.field private static final blacklist GET_SHELL_TEMP_TYPE:I = 0x16

.field private static final blacklist GET_SPECIFIED_TEMPS:I = 0x14

.field private static final blacklist GET_TEMP_INTERVAL:J = 0x1388L

.field private static final blacklist HORAE_ON:I = 0x1

.field private static final blacklist OLDSAFETY_TYPE_TIME:I = 0x4

.field private static final blacklist SHELLTEMPS_TIME:I = 0x2

.field private static final blacklist SHELLTEMP_TYPE_TIME:I = 0x3

.field private static final blacklist SKINTHERMAL_TIME:I = 0x1

.field private static final blacklist SPECTEMPS_TIME:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "HoraeHelper"

.field private static final blacklist THERMALSTATUS_TIME:I = 0x0

.field private static final blacklist TIME_SIZE:I = 0x7

.field private static final blacklist TRANSACTION_GET_THERMAL_STATUS:I = 0x4

.field private static final blacklist TRANSACTION_REGISTER_CLIENT:I = 0x1

.field private static final blacklist TRANSACTION_UNREGISTER_CLIENT:I = 0x2

.field private static final blacklist sDebug:Z

.field private static blacklist sHoraeProp:I


# instance fields
.field private blacklist mAllShellTemps:[I

.field private blacklist mAmbientThermal:I

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mIsOldSafetyType:I

.field private final blacklist mListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;",
            "Lcom/oplus/thermalcontrol/IThermalStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemote:Landroid/os/IBinder;

.field private blacklist mShellTempAndType:[I

.field private blacklist mSkinThermal:F

.field private blacklist mSpecifiedTemps:[I

.field private blacklist mThermalStatus:I

.field private blacklist mTimeDiff:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListenerMap(Lcom/oplus/util/OplusHoraeThermalHelper;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mListenerMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemote(Lcom/oplus/util/OplusHoraeThermalHelper;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 35
    const-string v0, "persist.sys.horae.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oplus/util/OplusHoraeThermalHelper;->sHoraeProp:I

    .line 37
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/util/OplusHoraeThermalHelper;->sDebug:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 5

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x7

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mTimeDiff:[J

    .line 58
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mThermalStatus:I

    .line 59
    const/high16 v2, -0x31000000

    iput v2, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mSkinThermal:F

    .line 60
    iput v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mAmbientThermal:I

    .line 61
    iput v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mIsOldSafetyType:I

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mAllShellTemps:[I

    .line 63
    iput-object v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mShellTempAndType:[I

    .line 64
    iput-object v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mSpecifiedTemps:[I

    .line 66
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mListenerMap:Landroid/util/ArrayMap;

    .line 108
    new-instance v1, Lcom/oplus/util/OplusHoraeThermalHelper$1;

    invoke-direct {v1, p0}, Lcom/oplus/util/OplusHoraeThermalHelper$1;-><init>(Lcom/oplus/util/OplusHoraeThermalHelper;)V

    iput-object v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 79
    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;->connHoraeService()Landroid/os/IBinder;

    .line 80
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 81
    iget-object v2, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mTimeDiff:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/util/OplusHoraeThermalHelper-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;-><init>()V

    return-void
.end method

.method private declared-synchronized blacklist connHoraeService()Landroid/os/IBinder;
    .locals 3

    monitor-enter p0

    .line 97
    :try_start_0
    const-string v0, "horae"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v0, :cond_0

    .line 100
    :try_start_1
    iget-object v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    goto :goto_0

    .line 101
    .end local p0    # "this":Lcom/oplus/util/OplusHoraeThermalHelper;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static whitelist getInstance()Lcom/oplus/util/OplusHoraeThermalHelper;
    .locals 1

    .line 75
    invoke-static {}, Lcom/oplus/util/OplusHoraeThermalHelper$SingletonHolder;->-$$Nest$sfgetinstance()Lcom/oplus/util/OplusHoraeThermalHelper;

    move-result-object v0

    return-object v0
.end method

.method private blacklist horaeEnable()Z
    .locals 3

    .line 448
    sget v0, Lcom/oplus/util/OplusHoraeThermalHelper;->sHoraeProp:I

    const/4 v1, 0x0

    const-string v2, "HoraeHelper"

    if-nez v0, :cond_0

    .line 449
    const-string v0, "horae is not open"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return v1

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;->connHoraeService()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 453
    const-string v0, "Cannot connect to HoraeService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v1

    .line 456
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist needConnect(I)Z
    .locals 8
    .param p1, "num"    # I

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 88
    .local v1, "now":J
    iget-object v3, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mTimeDiff:[J

    aget-wide v4, v3, p1

    sub-long v4, v1, v4

    .line 89
    .local v4, "diff":J
    const-wide/16 v6, 0x1388

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 91
    aput-wide v1, v3, p1

    .line 93
    :cond_0
    return v0
.end method


# virtual methods
.method public whitelist addHoraeThermalStatusListener(Landroid/content/Context;Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thermalListener"    # Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/oplus/util/OplusHoraeThermalHelper;->addHoraeThermalStatusListener(Ljava/util/concurrent/Executor;Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;)Z

    move-result v0

    return v0
.end method

.method public whitelist addHoraeThermalStatusListener(Ljava/util/concurrent/Executor;Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;)Z
    .locals 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "thermalListener"    # Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;

    .line 333
    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;->horaeEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 334
    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_2

    .line 335
    :cond_1
    new-instance v0, Lcom/oplus/util/OplusHoraeThermalHelper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/util/OplusHoraeThermalHelper$2;-><init>(Lcom/oplus/util/OplusHoraeThermalHelper;Ljava/util/concurrent/Executor;Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;)V

    .line 371
    .local v0, "IThermalStatusListener":Lcom/oplus/thermalcontrol/IThermalStatusListener;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 372
    .local v2, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 375
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.oplus.horae.IHoraeService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 376
    invoke-interface {v0}, Lcom/oplus/thermalcontrol/IThermalStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 377
    iget-object v4, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 378
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 379
    .local v4, "_result":I
    if-ne v4, v5, :cond_2

    .line 380
    iget-object v6, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    nop

    .line 386
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 381
    return v5

    .line 386
    :cond_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 388
    goto :goto_0

    .line 386
    .end local v4    # "_result":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 383
    :catch_0
    move-exception v4

    .line 384
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "HoraeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerClient has Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 388
    nop

    .line 389
    :goto_0
    return v1

    .line 386
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw v1

    .line 334
    .end local v0    # "IThermalStatusListener":Lcom/oplus/thermalcontrol/IThermalStatusListener;
    .end local v2    # "_data":Landroid/os/Parcel;
    .end local v3    # "_reply":Landroid/os/Parcel;
    :cond_3
    :goto_2
    return v1
.end method

.method public whitelist getAllShellTemps()[I
    .locals 7

    .line 180
    const-string v0, "HoraeHelper"

    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;->horaeEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 181
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/oplus/util/OplusHoraeThermalHelper;->needConnect(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mAllShellTemps:[I

    if-eqz v1, :cond_1

    .line 182
    return-object v1

    .line 184
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 185
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 187
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.oplus.horae.IHoraeService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x15

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 189
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 190
    .local v4, "tSize":I
    sget-boolean v5, Lcom/oplus/util/OplusHoraeThermalHelper;->sDebug:Z

    if-eqz v5, :cond_2

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllShellTemps tSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    new-array v5, v4, [I

    .line 194
    .local v5, "thermalArray":[I
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->readIntArray([I)V

    .line 195
    iput-object v5, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mAllShellTemps:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    nop

    .line 200
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 196
    return-object v5

    .line 200
    .end local v4    # "tSize":I
    .end local v5    # "thermalArray":[I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v4

    .line 198
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllShellTemps has Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    nop

    .line 203
    return-object v2

    .line 200
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw v0
.end method

.method public whitelist getAmbientThermal()I
    .locals 7

    .line 421
    const-string v0, "HoraeHelper"

    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;->horaeEnable()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 422
    return v2

    .line 424
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/oplus/util/OplusHoraeThermalHelper;->needConnect(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mAmbientThermal:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    .line 425
    return v1

    .line 427
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 428
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 430
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.oplus.horae.IHoraeService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 431
    iget-object v4, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 432
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 433
    .local v4, "ambientThermal":I
    sget-boolean v5, Lcom/oplus/util/OplusHoraeThermalHelper;->sDebug:Z

    if-eqz v5, :cond_2

    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ambientThermal:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_2
    iput v4, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mAmbientThermal:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    nop

    .line 441
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 437
    return v4

    .line 441
    .end local v4    # "ambientThermal":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v4

    .line 439
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get ambientThermal has Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 443
    nop

    .line 444
    return v2

    .line 441
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 443
    throw v0
.end method

.method public whitelist getBindProcessInfo()[Ljava/lang/String;
    .locals 7

    .line 297
    const-string v0, "HoraeHelper"

    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;->horaeEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 298
    return-object v2

    .line 300
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 301
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 303
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.oplus.horae.IHoraeService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    iget-object v4, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x65

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 305
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 306
    .local v4, "length":I
    sget-boolean v5, Lcom/oplus/util/OplusHoraeThermalHelper;->sDebug:Z

    if-eqz v5, :cond_1

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thermal length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_1
    if-gtz v4, :cond_2

    .line 310
    nop

    .line 318
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    return-object v2

    .line 312
    :cond_2
    :try_start_1
    new-array v5, v4, [Ljava/lang/String;

    .line 313
    .local v5, "processesInfoArray":[Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->readString16Array([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    nop

    .line 318
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    return-object v5

    .line 318
    .end local v4    # "length":I
    .end local v5    # "processesInfoArray":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v4

    .line 316
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get SkinThermal has Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    nop

    .line 321
    return-object v2

    .line 318
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    throw v0
.end method

.method public whitelist getCurrentThermal()F
    .locals 7

    .line 150
    const-string v0, "HoraeHelper"

    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;->horaeEnable()Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_0

    return v2

    .line 151
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oplus/util/OplusHoraeThermalHelper;->needConnect(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mSkinThermal:F

    const/high16 v3, -0x31000000

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_1

    .line 152
    return v1

    .line 154
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 155
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 157
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.oplus.horae.IHoraeService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 159
    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 160
    .local v4, "skinThermal":F
    sget-boolean v5, Lcom/oplus/util/OplusHoraeThermalHelper;->sDebug:Z

    if-eqz v5, :cond_2

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skinThermal:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2
    iput v4, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mSkinThermal:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    nop

    .line 168
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 164
    return v4

    .line 168
    .end local v4    # "skinThermal":F
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v4

    .line 166
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get SkinThermal has Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    nop

    .line 171
    return v2

    .line 168
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 170
    throw v0
.end method

.method public whitelist getShellTempAndType()[I
    .locals 9

    .line 211
    const-string v0, "HoraeHelper"

    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;->horaeEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 212
    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/oplus/util/OplusHoraeThermalHelper;->needConnect(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mShellTempAndType:[I

    if-eqz v1, :cond_1

    .line 213
    return-object v1

    .line 215
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 216
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 218
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.oplus.horae.IHoraeService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    iget-object v4, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x16

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 220
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 221
    .local v4, "currentTemperature":I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 222
    .local v5, "shellType":I
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v5, v7, v6

    const/4 v6, 0x1

    aput v4, v7, v6

    move-object v6, v7

    .line 223
    .local v6, "result":[I
    sget-boolean v7, Lcom/oplus/util/OplusHoraeThermalHelper;->sDebug:Z

    if-eqz v7, :cond_2

    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentTemperature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " shellType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_2
    iput-object v6, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mShellTempAndType:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    nop

    .line 231
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 227
    return-object v6

    .line 231
    .end local v4    # "currentTemperature":I
    .end local v5    # "shellType":I
    .end local v6    # "result":[I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v4

    .line 229
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getShellTempAndType has Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    nop

    .line 234
    return-object v2

    .line 231
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    throw v0
.end method

.method public whitelist getSpecifiedThermals()[I
    .locals 7

    .line 267
    const-string v0, "HoraeHelper"

    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;->horaeEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 268
    :cond_0
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/oplus/util/OplusHoraeThermalHelper;->needConnect(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mSpecifiedTemps:[I

    if-eqz v1, :cond_1

    .line 269
    return-object v1

    .line 271
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 272
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 274
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.oplus.horae.IHoraeService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 275
    iget-object v4, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 276
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 277
    .local v4, "length":I
    sget-boolean v5, Lcom/oplus/util/OplusHoraeThermalHelper;->sDebug:Z

    if-eqz v5, :cond_2

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thermal length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_2
    if-gtz v4, :cond_3

    .line 281
    nop

    .line 290
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    return-object v2

    .line 283
    :cond_3
    :try_start_1
    new-array v5, v4, [I

    .line 284
    .local v5, "thermalArray":[I
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->readIntArray([I)V

    .line 285
    iput-object v5, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mSpecifiedTemps:[I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    nop

    .line 290
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 286
    return-object v5

    .line 290
    .end local v4    # "length":I
    .end local v5    # "thermalArray":[I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v4

    .line 288
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get SkinThermal has Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    nop

    .line 293
    return-object v2

    .line 290
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 292
    throw v0
.end method

.method public whitelist getThermalStatus()I
    .locals 7

    .line 121
    const-string v0, "HoraeHelper"

    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;->horaeEnable()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 122
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oplus/util/OplusHoraeThermalHelper;->needConnect(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mThermalStatus:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    .line 123
    return v3

    .line 125
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 126
    .local v3, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 128
    .local v4, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "com.oplus.horae.IHoraeService"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    iget-object v5, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x4

    invoke-interface {v5, v6, v3, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 130
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 131
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .local v1, "thermalStatus":I
    sget-boolean v5, Lcom/oplus/util/OplusHoraeThermalHelper;->sDebug:Z

    if-eqz v5, :cond_2

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thermalStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    iput v1, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mThermalStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    nop

    .line 140
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 141
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 136
    return v1

    .line 140
    .end local v1    # "thermalStatus":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getThermalStatus has Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 141
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 142
    nop

    .line 143
    return v2

    .line 140
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 141
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 142
    throw v0
.end method

.method public whitelist isOldSafetyType()I
    .locals 7

    .line 242
    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;->horaeEnable()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    return v1

    .line 243
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusHoraeThermalHelper;->needConnect(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mIsOldSafetyType:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    .line 244
    return v0

    .line 246
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 247
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 249
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.oplus.horae.IHoraeService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 250
    iget-object v3, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 251
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 252
    .local v3, "currentType":I
    iput v3, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mIsOldSafetyType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    nop

    .line 257
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    return v3

    .line 257
    .end local v3    # "currentType":I
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 254
    :catch_0
    move-exception v3

    .line 255
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "HoraeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getShellTempAndType has Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 259
    nop

    .line 260
    return v1

    .line 257
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 259
    throw v1
.end method

.method public whitelist removeHoraeThermalStatusListener(Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;)Z
    .locals 8
    .param p1, "thermalListener"    # Lcom/oplus/util/OplusHoraeThermalHelper$IThermalListener;

    .line 393
    iget-object v0, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/thermalcontrol/IThermalStatusListener;

    .line 394
    .local v0, "IThermalStatusListener":Lcom/oplus/thermalcontrol/IThermalStatusListener;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/oplus/util/OplusHoraeThermalHelper;->horaeEnable()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 397
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 398
    .local v2, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 400
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.oplus.horae.IHoraeService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 401
    invoke-interface {v0}, Lcom/oplus/thermalcontrol/IThermalStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 402
    iget-object v4, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 403
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 404
    .local v4, "_result":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 405
    iget-object v6, p0, Lcom/oplus/util/OplusHoraeThermalHelper;->mListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    nop

    .line 411
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 406
    return v5

    .line 411
    .end local v4    # "_result":I
    :cond_2
    nop

    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 413
    goto :goto_1

    .line 411
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 408
    :catch_0
    move-exception v4

    .line 409
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "HoraeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeClient has Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 414
    :goto_1
    return v1

    .line 411
    :goto_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 413
    throw v1
.end method
