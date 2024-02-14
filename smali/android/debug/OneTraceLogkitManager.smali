.class public Landroid/debug/OneTraceLogkitManager;
.super Landroid/debug/IDebugLogManager;
.source "OneTraceLogkitManager.java"


# static fields
.field private static final blacklist ACTION_TRACE_SERVER:Ljava/lang/String; = "com.oplus.onetrace.intent.TRACE"

.field private static final blacklist MAX_BUFFER_SIZE:I = 0x2000

.field private static final blacklist MAX_RETRY_CONNECT_TIMES:I = 0x5

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "StatsManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "OneTraceLogkitManager"

.field private static final blacklist TRACE_REMOTE_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.onetrace"

.field private static volatile blacklist sInstance:Landroid/debug/OneTraceLogkitManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mOTraceConnection:Landroid/content/ServiceConnection;

.field private final blacklist mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRetryCount(Landroid/debug/OneTraceLogkitManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Landroid/debug/OneTraceLogkitManager;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceConnected(Landroid/debug/OneTraceLogkitManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroid/debug/OneTraceLogkitManager;->mServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mbindService(Landroid/debug/OneTraceLogkitManager;)Z
    .locals 0

    invoke-direct {p0}, Landroid/debug/OneTraceLogkitManager;->bindService()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartOneTraceCommand(Landroid/debug/OneTraceLogkitManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/debug/OneTraceLogkitManager;->startOneTraceCommand()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    sput-object v0, Landroid/debug/OneTraceLogkitManager;->sInstance:Landroid/debug/OneTraceLogkitManager;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Landroid/debug/IDebugLogManager;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/debug/OneTraceLogkitManager;->mRetryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/debug/OneTraceLogkitManager;->mServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Landroid/debug/OneTraceLogkitManager$1;

    invoke-direct {v0, p0}, Landroid/debug/OneTraceLogkitManager$1;-><init>(Landroid/debug/OneTraceLogkitManager;)V

    iput-object v0, p0, Landroid/debug/OneTraceLogkitManager;->mOTraceConnection:Landroid/content/ServiceConnection;

    .line 79
    iput-object p1, p0, Landroid/debug/OneTraceLogkitManager;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method private blacklist bindService()Z
    .locals 4

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.onetrace.intent.TRACE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oplus.onetrace"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Landroid/debug/OneTraceLogkitManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/debug/OneTraceLogkitManager;->mOTraceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method private static blacklist dumpAppService(Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "service"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 169
    .local v0, "baseArgs":[Ljava/lang/String;
    array-length v1, v0

    array-length v3, p2

    add-int/2addr v1, v3

    new-array v1, v1, [Ljava/lang/String;

    .line 170
    .local v1, "cmds":[Ljava/lang/String;
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    array-length v3, v0

    array-length v4, p2

    invoke-static {p2, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    const-string v2, "activity"

    invoke-static {v2, p0, v1}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static blacklist dumpAppService(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/String;

    .line 149
    const-string v0, "OneTraceLogkitManager"

    const/16 v1, 0x2000

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .local v1, "sharedMem":Landroid/os/SharedMemory;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2, p0, p1}, Landroid/debug/OneTraceLogkitManager;->dumpAppService(Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    :cond_0
    return v2

    .line 149
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "serviceName":Ljava/lang/String;
    .end local p1    # "args":[Ljava/lang/String;
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0

    .line 151
    .end local v1    # "sharedMem":Landroid/os/SharedMemory;
    .restart local p0    # "serviceName":Ljava/lang/String;
    .restart local p1    # "args":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrnoException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1    # "e":Landroid/system/ErrnoException;
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/debug/OneTraceLogkitManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    sget-object v0, Landroid/debug/OneTraceLogkitManager;->sInstance:Landroid/debug/OneTraceLogkitManager;

    if-nez v0, :cond_1

    .line 84
    const-class v0, Landroid/debug/OneTraceLogkitManager;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Landroid/debug/OneTraceLogkitManager;->sInstance:Landroid/debug/OneTraceLogkitManager;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Landroid/debug/OneTraceLogkitManager;

    invoke-direct {v1, p0}, Landroid/debug/OneTraceLogkitManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/debug/OneTraceLogkitManager;->sInstance:Landroid/debug/OneTraceLogkitManager;

    .line 88
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 90
    :cond_1
    :goto_0
    sget-object v0, Landroid/debug/OneTraceLogkitManager;->sInstance:Landroid/debug/OneTraceLogkitManager;

    return-object v0
.end method

.method private blacklist startOneTraceCommand()V
    .locals 3

    .line 113
    const-string v0, "log"

    const-string v1, "--start"

    const-string v2, "auto"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "startRecordArgs":[Ljava/lang/String;
    const-string v1, "StatsManagerService"

    invoke-static {v1, v0}, Landroid/debug/OneTraceLogkitManager;->dumpAppService(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, "OneTraceLogkitManager"

    const-string v2, "Failed to start recording OT_TRACE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-void
.end method

.method private blacklist stopOneTraceCommand()V
    .locals 3

    .line 121
    const-string v0, "log"

    const-string v1, "--stop"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "stopRecordArgs":[Ljava/lang/String;
    const-string v1, "StatsManagerService"

    invoke-static {v1, v0}, Landroid/debug/OneTraceLogkitManager;->dumpAppService(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const-string v1, "OneTraceLogkitManager"

    const-string v2, "Failed to stop recording OT_TRACE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-void
.end method

.method private blacklist unbindService()V
    .locals 2

    .line 134
    iget-object v0, p0, Landroid/debug/OneTraceLogkitManager;->mServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/debug/OneTraceLogkitManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/debug/OneTraceLogkitManager;->mOTraceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 136
    iget-object v0, p0, Landroid/debug/OneTraceLogkitManager;->mServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist setLogDump()V
    .locals 2

    .line 106
    const-string v0, "OneTraceLogkitManager"

    const-string v1, "flushOneTraceLog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Landroid/debug/OneTraceLogkitManager;->stopOneTraceCommand()V

    .line 108
    invoke-direct {p0}, Landroid/debug/OneTraceLogkitManager;->startOneTraceCommand()V

    .line 109
    return-void
.end method

.method public blacklist setLogOff()V
    .locals 2

    .line 99
    const-string v0, "OneTraceLogkitManager"

    const-string v1, "stopOneTraceLog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Landroid/debug/OneTraceLogkitManager;->stopOneTraceCommand()V

    .line 101
    invoke-direct {p0}, Landroid/debug/OneTraceLogkitManager;->unbindService()V

    .line 103
    return-void
.end method

.method public blacklist setLogOn(JLjava/lang/String;)V
    .locals 2
    .param p1, "maxSize"    # J
    .param p3, "param"    # Ljava/lang/String;

    .line 94
    const-string v0, "OneTraceLogkitManager"

    const-string v1, "startOneTraceLog auto"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Landroid/debug/OneTraceLogkitManager;->bindService()Z

    .line 96
    return-void
.end method
