.class public Landroid/debug/DebugLogManager;
.super Landroid/debug/IDebugLogManager;
.source "DebugLogManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sDefaultMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sInstance:Landroid/debug/DebugLogManager;


# instance fields
.field private blacklist mActiveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/debug/DebugLogManager;->TAG_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/debug/DebugLogManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/debug/DebugLogManager;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/debug/DebugLogManager;->sDefaultMaps:Ljava/util/HashMap;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Landroid/debug/DebugLogManager;->sInstance:Landroid/debug/DebugLogManager;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Landroid/debug/IDebugLogManager;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/debug/DebugLogManager;->mActiveList:Ljava/util/ArrayList;

    .line 49
    sget-object v0, Landroid/debug/DebugLogManager;->sDefaultMaps:Ljava/util/HashMap;

    invoke-static {p1}, Landroid/debug/ThirdPartLogManager;->getInstance(Landroid/content/Context;)Landroid/debug/ThirdPartLogManager;

    move-result-object v1

    const-string v2, "thirdpart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p1}, Landroid/debug/AudioLogManager;->getInstance(Landroid/content/Context;)Landroid/debug/AudioLogManager;

    move-result-object v1

    const-string v2, "media"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Landroid/debug/BluetoothLogManager;->getInstance(Landroid/content/Context;)Landroid/debug/BluetoothLogManager;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Landroid/debug/GpsLogManager;->getInstance(Landroid/content/Context;)Landroid/debug/GpsLogManager;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p1}, Landroid/debug/WifiLogManager;->getInstance(Landroid/content/Context;)Landroid/debug/WifiLogManager;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p1}, Landroid/debug/NetworkLogManager;->getInstance(Landroid/content/Context;)Landroid/debug/NetworkLogManager;

    move-result-object v1

    const-string v2, "network"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Landroid/debug/SensorLogManager;->getInstance(Landroid/content/Context;)Landroid/debug/SensorLogManager;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Landroid/debug/CameraLogManager;->getInstance(Landroid/content/Context;)Landroid/debug/CameraLogManager;

    move-result-object v1

    const-string v2, "camera"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p1}, Landroid/debug/OplusPerfLogkit;->getInstance(Landroid/content/Context;)Landroid/debug/OplusPerfLogkit;

    move-result-object v1

    const-string v2, "junk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Landroid/debug/OneTraceLogkitManager;->getInstance(Landroid/content/Context;)Landroid/debug/OneTraceLogkitManager;

    move-result-object v1

    const-string v2, "OneTrace"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p1}, Landroid/debug/InputMethodLogManager;->getInstance(Landroid/content/Context;)Landroid/debug/InputMethodLogManager;

    move-result-object v1

    const-string v2, "inputmethod"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public static blacklist getInstance()Landroid/debug/DebugLogManager;
    .locals 1

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/debug/DebugLogManager;->getInstance(Landroid/content/Context;)Landroid/debug/DebugLogManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/debug/DebugLogManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    sget-object v0, Landroid/debug/DebugLogManager;->sInstance:Landroid/debug/DebugLogManager;

    if-nez v0, :cond_1

    .line 74
    const-class v0, Landroid/debug/DebugLogManager;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Landroid/debug/DebugLogManager;->sInstance:Landroid/debug/DebugLogManager;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Landroid/debug/DebugLogManager;

    invoke-direct {v1, p0}, Landroid/debug/DebugLogManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/debug/DebugLogManager;->sInstance:Landroid/debug/DebugLogManager;

    .line 78
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 80
    :cond_1
    :goto_0
    sget-object v0, Landroid/debug/DebugLogManager;->sInstance:Landroid/debug/DebugLogManager;

    return-object v0
.end method


# virtual methods
.method public blacklist getActiveManager(Ljava/lang/String;)Landroid/debug/IDebugLogManager;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .line 154
    :try_start_0
    sget-object v0, Landroid/debug/DebugLogManager;->sDefaultMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/debug/IDebugLogManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/debug/DebugLogManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active manager failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist setActiveList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    sget-object v0, Landroid/debug/DebugLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object p1, p0, Landroid/debug/DebugLogManager;->mActiveList:Ljava/util/ArrayList;

    .line 94
    :cond_0
    return-void
.end method

.method public blacklist setLogDump()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    sget-object v0, Landroid/debug/DebugLogManager;->TAG:Ljava/lang/String;

    const-string v1, "setLogDump: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Landroid/debug/DebugLogManager;->mActiveList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 143
    iget-object v0, p0, Landroid/debug/DebugLogManager;->mActiveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "logList":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/debug/DebugLogManager;->getActiveManager(Ljava/lang/String;)Landroid/debug/IDebugLogManager;

    move-result-object v2

    .line 145
    .local v2, "activeManager":Landroid/debug/IDebugLogManager;
    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v2}, Landroid/debug/IDebugLogManager;->setLogDump()V

    .line 148
    .end local v1    # "logList":Ljava/lang/String;
    .end local v2    # "activeManager":Landroid/debug/IDebugLogManager;
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    return-void
.end method

.method public blacklist setLogOff()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    sget-object v0, Landroid/debug/DebugLogManager;->TAG:Ljava/lang/String;

    const-string v1, "setLogOff: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Landroid/debug/DebugLogManager;->mActiveList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 124
    iget-object v0, p0, Landroid/debug/DebugLogManager;->mActiveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, "logList":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/debug/DebugLogManager;->getActiveManager(Ljava/lang/String;)Landroid/debug/IDebugLogManager;

    move-result-object v2

    .line 126
    .local v2, "activeManager":Landroid/debug/IDebugLogManager;
    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v2}, Landroid/debug/IDebugLogManager;->setLogOff()V

    .line 129
    .end local v1    # "logList":Ljava/lang/String;
    .end local v2    # "activeManager":Landroid/debug/IDebugLogManager;
    :cond_0
    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method public blacklist setLogOn(JLjava/lang/String;)V
    .locals 3
    .param p1, "maxSize"    # J
    .param p3, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    sget-object v0, Landroid/debug/DebugLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLogOn: maxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Landroid/debug/DebugLogManager;->mActiveList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 106
    iget-object v0, p0, Landroid/debug/DebugLogManager;->mActiveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "logList":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/debug/DebugLogManager;->getActiveManager(Ljava/lang/String;)Landroid/debug/IDebugLogManager;

    move-result-object v2

    .line 108
    .local v2, "activeManager":Landroid/debug/IDebugLogManager;
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v2, p1, p2, p3}, Landroid/debug/IDebugLogManager;->setLogOn(JLjava/lang/String;)V

    .line 111
    .end local v1    # "logList":Ljava/lang/String;
    .end local v2    # "activeManager":Landroid/debug/IDebugLogManager;
    :cond_0
    goto :goto_0

    .line 113
    :cond_1
    return-void
.end method
