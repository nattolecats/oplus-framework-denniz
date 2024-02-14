.class public Lcom/oplus/network/OlkManager;
.super Ljava/lang/Object;
.source "OlkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/OlkManager$InternalCallback;,
        Lcom/oplus/network/OlkManager$OlkListener;,
        Lcom/oplus/network/OlkManager$EventChangeCb;,
        Lcom/oplus/network/OlkManager$IOlkCallback;
    }
.end annotation


# static fields
.field private static final blacklist DELAY_INIT_TIME:J = 0x2710L

.field public static final whitelist SRV_NAME:Ljava/lang/String; = "opluslinkkit"

.field public static final whitelist TAG:Ljava/lang/String; = "OlkManager"

.field private static blacklist sInstance:Lcom/oplus/network/OlkManager;


# instance fields
.field private final blacklist clearSocketPriorityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/network/OlkManager$OlkListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCacheCallback:Lcom/oplus/network/OlkManager$IOlkCallback;

.field public whitelist mContext:Landroid/content/Context;

.field private blacklist mEventChanged:Lcom/oplus/network/OlkManager$EventChangeCb;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mInternal:Lcom/oplus/network/OlkManager$InternalCallback;

.field private blacklist mOlkService:Lcom/oplus/network/IOlk;

.field private final blacklist setApBandwidthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/network/OlkManager$OlkListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist setApStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/network/OlkManager$OlkListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist setRealTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/network/OlkManager$OlkListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist setSocketPriorityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/network/OlkManager$OlkListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist showDebug:Z

.field private final blacklist updateCellularEnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/network/OlkManager$OlkListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetclearSocketPriorityList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/network/OlkManager;->clearSocketPriorityList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCacheCallback(Lcom/oplus/network/OlkManager;)Lcom/oplus/network/OlkManager$IOlkCallback;
    .locals 0

    iget-object p0, p0, Lcom/oplus/network/OlkManager;->mCacheCallback:Lcom/oplus/network/OlkManager$IOlkCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsetApBandwidthList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/network/OlkManager;->setApBandwidthList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsetApStateList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/network/OlkManager;->setApStateList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsetRealTimeList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/network/OlkManager;->setRealTimeList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsetSocketPriorityList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/network/OlkManager;->setSocketPriorityList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetupdateCellularEnableList(Lcom/oplus/network/OlkManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/network/OlkManager;->updateCellularEnableList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/oplus/network/OlkManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/network/OlkManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/network/OlkManager;->showDebug:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/network/OlkManager;->mCacheCallback:Lcom/oplus/network/OlkManager$IOlkCallback;

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/network/OlkManager;->setApStateList:Ljava/util/ArrayList;

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/network/OlkManager;->setApBandwidthList:Ljava/util/ArrayList;

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/network/OlkManager;->setSocketPriorityList:Ljava/util/ArrayList;

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/network/OlkManager;->clearSocketPriorityList:Ljava/util/ArrayList;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/network/OlkManager;->setRealTimeList:Ljava/util/ArrayList;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/network/OlkManager;->updateCellularEnableList:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcom/oplus/network/OlkManager;->mContext:Landroid/content/Context;

    .line 61
    new-instance v1, Lcom/oplus/network/OlkManager$EventChangeCb;

    invoke-direct {v1, p0, v0}, Lcom/oplus/network/OlkManager$EventChangeCb;-><init>(Lcom/oplus/network/OlkManager;Lcom/oplus/network/OlkManager$EventChangeCb-IA;)V

    iput-object v1, p0, Lcom/oplus/network/OlkManager;->mEventChanged:Lcom/oplus/network/OlkManager$EventChangeCb;

    .line 62
    new-instance v1, Lcom/oplus/network/OlkManager$InternalCallback;

    invoke-direct {v1, p0, v0}, Lcom/oplus/network/OlkManager$InternalCallback;-><init>(Lcom/oplus/network/OlkManager;Lcom/oplus/network/OlkManager$InternalCallback-IA;)V

    iput-object v1, p0, Lcom/oplus/network/OlkManager;->mInternal:Lcom/oplus/network/OlkManager$InternalCallback;

    .line 63
    invoke-direct {p0}, Lcom/oplus/network/OlkManager;->checkOlkService()V

    .line 64
    return-void
.end method

.method private blacklist checkOlkService()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->mOlkService:Lcom/oplus/network/IOlk;

    if-nez v0, :cond_1

    .line 44
    const-string v0, "opluslinkkit"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/network/IOlk$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOlk;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/OlkManager;->mOlkService:Lcom/oplus/network/IOlk;

    .line 45
    const-string v1, "OlkManager"

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    const-string v0, "OlkManager() : registerInit"

    invoke-direct {p0, v0}, Lcom/oplus/network/OlkManager;->log(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->mOlkService:Lcom/oplus/network/IOlk;

    iget-object v2, p0, Lcom/oplus/network/OlkManager;->mInternal:Lcom/oplus/network/OlkManager$InternalCallback;

    invoke-interface {v0, v2}, Lcom/oplus/network/IOlk;->registerInternalCallback(Lcom/oplus/network/IOlkInternalCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "register fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 53
    :cond_0
    const-string v0, "mOlkService is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    :goto_1
    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/oplus/network/OlkManager;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .line 33
    const-class v0, Lcom/oplus/network/OlkManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/oplus/network/OlkManager;->sInstance:Lcom/oplus/network/OlkManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/oplus/network/OlkManager;

    invoke-direct {v1, p0}, Lcom/oplus/network/OlkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/network/OlkManager;->sInstance:Lcom/oplus/network/OlkManager;

    .line 36
    const-string v1, "OlkManager"

    const-string v2, "OlkManager first new!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    sget-object v1, Lcom/oplus/network/OlkManager;->sInstance:Lcom/oplus/network/OlkManager;

    monitor-exit v0

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getOpPackageName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 170
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 171
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    .line 172
    const-string v1, "OlkManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 3

    .line 67
    const-string v0, "finalize()"

    invoke-direct {p0, v0}, Lcom/oplus/network/OlkManager;->log(Ljava/lang/String;)V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->mOlkService:Lcom/oplus/network/IOlk;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->mEventChanged:Lcom/oplus/network/OlkManager$EventChangeCb;

    invoke-interface {v0, v1}, Lcom/oplus/network/IOlk;->unregisterEventChange(Lcom/oplus/network/IOlkEventChange;)V

    .line 71
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->mOlkService:Lcom/oplus/network/IOlk;

    iget-object v1, p0, Lcom/oplus/network/OlkManager;->mInternal:Lcom/oplus/network/OlkManager$InternalCallback;

    invoke-interface {v0, v1}, Lcom/oplus/network/IOlk;->unregisterInternalCallback(Lcom/oplus/network/IOlkInternalCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OlkManager"

    const-string v2, "unregister fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist getVersion()Ljava/lang/String;
    .locals 4

    .line 147
    const-string v0, "0.0"

    .line 148
    .local v0, "version":Ljava/lang/String;
    invoke-direct {p0}, Lcom/oplus/network/OlkManager;->checkOlkService()V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVersion() pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oplus/network/OlkManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/network/OlkManager;->log(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->mOlkService:Lcom/oplus/network/IOlk;

    const-string v2, "OlkManager"

    if-nez v1, :cond_0

    .line 151
    const-string v1, "getVersion() mOlkService is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v0

    .line 155
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/oplus/network/IOlk;->getVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVersion() version = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "getVersion fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist registerCallback(ILcom/oplus/network/OlkManager$IOlkCallback;)I
    .locals 3
    .param p1, "event"    # I
    .param p2, "cb"    # Lcom/oplus/network/OlkManager$IOlkCallback;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback() event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/network/OlkManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/network/OlkManager;->log(Ljava/lang/String;)V

    .line 100
    if-nez p2, :cond_0

    .line 101
    const/16 v0, 0x190

    return v0

    .line 105
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OlkManager;->checkOlkService()V

    .line 106
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->mOlkService:Lcom/oplus/network/IOlk;

    iget-object v1, p0, Lcom/oplus/network/OlkManager;->mEventChanged:Lcom/oplus/network/OlkManager$EventChangeCb;

    invoke-interface {v0, p1, v1}, Lcom/oplus/network/IOlk;->registerEventChange(ILcom/oplus/network/IOlkEventChange;)I

    move-result v0

    .line 107
    .local v0, "ret":I
    if-eqz v0, :cond_1

    .line 108
    return v0

    .line 110
    :cond_1
    iput-object p2, p0, Lcom/oplus/network/OlkManager;->mCacheCallback:Lcom/oplus/network/OlkManager$IOlkCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "ret":I
    nop

    .line 115
    const/4 v0, 0x0

    return v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerEventChange exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OlkManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/16 v1, 0x1f4

    return v1
.end method

.method public whitelist registerInterfaceCallback(ILcom/oplus/network/OlkManager$OlkListener;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "cb"    # Lcom/oplus/network/OlkManager$OlkListener;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerInterfaceCallback() event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/network/OlkManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/network/OlkManager;->log(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/oplus/network/OlkManager;->checkOlkService()V

    .line 287
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->setApStateList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setApStateList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setApStateList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 294
    :cond_1
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->setApBandwidthList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 296
    :try_start_1
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setApBandwidthList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setApBandwidthList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 301
    :cond_3
    :goto_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->setSocketPriorityList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 303
    :try_start_2
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setSocketPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 304
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setSocketPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 308
    :cond_5
    :goto_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_7

    .line 309
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->clearSocketPriorityList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->clearSocketPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 311
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->clearSocketPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_6
    monitor-exit v0

    goto :goto_3

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 315
    :cond_7
    :goto_3
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_9

    .line 316
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->setRealTimeList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 317
    :try_start_4
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setRealTimeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 318
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setRealTimeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_8
    monitor-exit v0

    goto :goto_4

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    .line 322
    :cond_9
    :goto_4
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_b

    .line 323
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->updateCellularEnableList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 324
    :try_start_5
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->updateCellularEnableList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 325
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->updateCellularEnableList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_a
    monitor-exit v0

    goto :goto_5

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v1

    .line 329
    :cond_b
    :goto_5
    return-void
.end method

.method public whitelist request(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request() pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/network/OlkManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/network/OlkManager;->log(Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "b":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OlkManager;->checkOlkService()V

    .line 84
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->mOlkService:Lcom/oplus/network/IOlk;

    invoke-interface {v1, p1}, Lcom/oplus/network/IOlk;->request(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 88
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OlkManager"

    const-string v3, "request fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/16 v2, 0x1f4

    const-string v3, "result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist unregisterCallback(Lcom/oplus/network/OlkManager$IOlkCallback;)I
    .locals 3
    .param p1, "cb"    # Lcom/oplus/network/OlkManager$IOlkCallback;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterCallback() pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/network/OlkManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/network/OlkManager;->log(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->mCacheCallback:Lcom/oplus/network/OlkManager$IOlkCallback;

    if-eq p1, v0, :cond_0

    .line 121
    const/16 v0, 0x190

    return v0

    .line 125
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->mOlkService:Lcom/oplus/network/IOlk;

    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->mEventChanged:Lcom/oplus/network/OlkManager$EventChangeCb;

    invoke-interface {v0, v1}, Lcom/oplus/network/IOlk;->unregisterEventChange(Lcom/oplus/network/IOlkEventChange;)V

    .line 128
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/network/OlkManager;->mCacheCallback:Lcom/oplus/network/OlkManager$IOlkCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .line 133
    const/4 v0, 0x0

    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterEventChange failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OlkManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v1, 0x1f4

    return v1
.end method

.method public whitelist unregisterInterfaceCallback(Lcom/oplus/network/OlkManager$OlkListener;)V
    .locals 2
    .param p1, "cb"    # Lcom/oplus/network/OlkManager$OlkListener;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterInterfaceCallback() pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/network/OlkManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/network/OlkManager;->log(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->setApStateList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setApStateList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setApStateList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 338
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setApBandwidthList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 339
    :try_start_1
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->setApBandwidthList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->setApBandwidthList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 342
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 343
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->setSocketPriorityList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 344
    :try_start_2
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setSocketPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setSocketPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 347
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 348
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->clearSocketPriorityList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 349
    :try_start_3
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->clearSocketPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->clearSocketPriorityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 352
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 353
    iget-object v0, p0, Lcom/oplus/network/OlkManager;->setRealTimeList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 354
    :try_start_4
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setRealTimeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 355
    iget-object v1, p0, Lcom/oplus/network/OlkManager;->setRealTimeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 357
    :cond_4
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 352
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 347
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 342
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 337
    :catchall_4
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1
.end method
