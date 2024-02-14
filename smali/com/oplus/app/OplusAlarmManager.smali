.class public Lcom/oplus/app/OplusAlarmManager;
.super Ljava/lang/Object;
.source "OplusAlarmManager.java"


# static fields
.field private static final blacklist PERMISSION_SAFE_MANAGER:Ljava/lang/String; = "com.oplus.permission.safe.SAFE_MANAGER"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusAlarmManager"

.field private static volatile blacklist sInstance:Lcom/oplus/app/OplusAlarmManager;


# instance fields
.field private final blacklist mAlarmManager:Landroid/app/IAlarmManager;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    nop

    .line 51
    const-string v0, "alarm"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/app/OplusAlarmManager;->mAlarmManager:Landroid/app/IAlarmManager;

    .line 52
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/app/OplusAlarmManager;
    .locals 2

    .line 62
    sget-object v0, Lcom/oplus/app/OplusAlarmManager;->sInstance:Lcom/oplus/app/OplusAlarmManager;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/oplus/app/OplusAlarmManager;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/oplus/app/OplusAlarmManager;->sInstance:Lcom/oplus/app/OplusAlarmManager;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/oplus/app/OplusAlarmManager;

    invoke-direct {v1}, Lcom/oplus/app/OplusAlarmManager;-><init>()V

    sput-object v1, Lcom/oplus/app/OplusAlarmManager;->sInstance:Lcom/oplus/app/OplusAlarmManager;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/app/OplusAlarmManager;->sInstance:Lcom/oplus/app/OplusAlarmManager;

    return-object v0
.end method


# virtual methods
.method public whitelist cancelPoweroffAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 83
    const-string v0, "com.oplus.permission.safe.SAFE_MANAGER"

    const-string v1, "OplusAlarmManager"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/oplus/app/OplusAlarmManager;->mAlarmManager:Landroid/app/IAlarmManager;

    invoke-interface {v0, p2}, Landroid/app/IAlarmManager;->cancelPoweroffAlarm(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "Unable to cancel power off Alarm Manager!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
