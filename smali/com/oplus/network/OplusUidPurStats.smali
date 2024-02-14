.class public Lcom/oplus/network/OplusUidPurStats;
.super Ljava/lang/Object;
.source "OplusUidPurStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;
    }
.end annotation


# static fields
.field public static final blacklist DBG:Z = true

.field private static final blacklist OPLUS_UID_PUR_STATS_SERVICE:Ljava/lang/String; = "oplusuidpurstats"

.field public static final blacklist SRV_NAME:Ljava/lang/String; = "oplusuidpurstats"

.field public static final blacklist TAG:Ljava/lang/String; = "OplusUidPurStats"

.field private static blacklist mInstance:Lcom/oplus/network/OplusUidPurStats;


# instance fields
.field private blacklist mCb:Lcom/oplus/network/IOplusUidNwChange;

.field private final blacklist mCbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist sStatsService:Lcom/oplus/network/IOplusUidPurStats;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCbList(Lcom/oplus/network/OplusUidPurStats;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/network/OplusUidPurStats;->mCbList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/network/OplusUidPurStats;->mCbList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/oplus/network/OplusUidPurStats$1;

    invoke-direct {v0, p0}, Lcom/oplus/network/OplusUidPurStats$1;-><init>(Lcom/oplus/network/OplusUidPurStats;)V

    iput-object v0, p0, Lcom/oplus/network/OplusUidPurStats;->mCb:Lcom/oplus/network/IOplusUidNwChange;

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusUidPurStats;->getUidPurStatsService()Lcom/oplus/network/IOplusUidPurStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUidPurStatsService failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusUidPurStats"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist getInstance()Lcom/oplus/network/OplusUidPurStats;
    .locals 2

    .line 82
    const-class v0, Lcom/oplus/network/OplusUidPurStats;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/oplus/network/OplusUidPurStats;->mInstance:Lcom/oplus/network/OplusUidPurStats;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/oplus/network/OplusUidPurStats;

    invoke-direct {v1}, Lcom/oplus/network/OplusUidPurStats;-><init>()V

    sput-object v1, Lcom/oplus/network/OplusUidPurStats;->mInstance:Lcom/oplus/network/OplusUidPurStats;

    .line 86
    :cond_0
    sget-object v1, Lcom/oplus/network/OplusUidPurStats;->mInstance:Lcom/oplus/network/OplusUidPurStats;

    monitor-exit v0

    return-object v1

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized blacklist getUidPurStatsService()Lcom/oplus/network/IOplusUidPurStats;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/oplus/network/OplusUidPurStats;->sStatsService:Lcom/oplus/network/IOplusUidPurStats;

    if-nez v0, :cond_1

    .line 60
    const-string v0, "oplusuidpurstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/network/IOplusUidPurStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusUidPurStats;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/OplusUidPurStats;->sStatsService:Lcom/oplus/network/IOplusUidPurStats;

    .line 61
    const-string v0, "OplusUidPurStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUidPurStatsService return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/network/OplusUidPurStats;->sStatsService:Lcom/oplus/network/IOplusUidPurStats;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/oplus/network/OplusUidPurStats;->sStatsService:Lcom/oplus/network/IOplusUidPurStats;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "OplusUidPurStats"

    const-string v1, "service get failed oplusuidpurstats"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local p0    # "this":Lcom/oplus/network/OplusUidPurStats;
    :cond_0
    iget-object v1, p0, Lcom/oplus/network/OplusUidPurStats;->mCb:Lcom/oplus/network/IOplusUidNwChange;

    invoke-interface {v0, v1}, Lcom/oplus/network/IOplusUidPurStats;->registerUidNwStatusChange(Lcom/oplus/network/IOplusUidNwChange;)V

    .line 68
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/network/OplusUidPurStats;->sStatsService:Lcom/oplus/network/IOplusUidPurStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public blacklist fetchAppFreezeStatsInfoList()Ljava/lang/String;
    .locals 9

    .line 167
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 168
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/oplus/network/OplusUidPurStats;->getUidPurStatsService()Lcom/oplus/network/IOplusUidPurStats;

    move-result-object v2

    invoke-interface {v2}, Lcom/oplus/network/IOplusUidPurStats;->fetchAppFreezeStatsInfoList()[Lcom/oplus/network/stats/AppFreezeStatsInfo;

    move-result-object v2

    .line 169
    .local v2, "array":[Lcom/oplus/network/stats/AppFreezeStatsInfo;
    if-nez v2, :cond_0

    .line 170
    return-object v0

    .line 172
    :cond_0
    array-length v3, v2

    .line 173
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 174
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v5, "jobj":Lorg/json/JSONObject;
    const-string v6, "mUid"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mStats:Lcom/oplus/network/stats/AppFreezeStats;

    iget v7, v7, Lcom/oplus/network/stats/AppFreezeStats;->mUid:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    const-string v6, "mOccurFlag"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mStats:Lcom/oplus/network/stats/AppFreezeStats;

    iget v7, v7, Lcom/oplus/network/stats/AppFreezeStats;->mOccurFlag:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    const-string v6, "mRxBytes"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mStats:Lcom/oplus/network/stats/AppFreezeStats;

    iget-wide v7, v7, Lcom/oplus/network/stats/AppFreezeStats;->mRxBytes:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 178
    const-string v6, "mTxBytes"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mStats:Lcom/oplus/network/stats/AppFreezeStats;

    iget-wide v7, v7, Lcom/oplus/network/stats/AppFreezeStats;->mTxBytes:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 179
    const-string v6, "mRxCount"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mStats:Lcom/oplus/network/stats/AppFreezeStats;

    iget v7, v7, Lcom/oplus/network/stats/AppFreezeStats;->mRxCount:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-string v6, "mTxCount"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mStats:Lcom/oplus/network/stats/AppFreezeStats;

    iget v7, v7, Lcom/oplus/network/stats/AppFreezeStats;->mTxCount:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    const-string v6, "mAddBlockTime"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    iget-wide v7, v7, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 182
    const-string v6, "mRemoveBlockTime"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    iget-wide v7, v7, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 183
    const-string v6, "mSendResetTime"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    iget-wide v7, v7, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 184
    const-string v6, "mEnterFgTime"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    iget-wide v7, v7, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 185
    const-string v6, "mEnterBgTime"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    iget-wide v7, v7, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 186
    const-string v6, "mAppName"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeStatsInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 173
    nop

    .end local v5    # "jobj":Lorg/json/JSONObject;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 189
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 190
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "array":[Lcom/oplus/network/stats/AppFreezeStatsInfo;
    .end local v3    # "size":I
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusUidPurStats"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    return-object v0
.end method

.method public blacklist fetchAppFreezeSynInfoList()Ljava/lang/String;
    .locals 9

    .line 139
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 140
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/oplus/network/OplusUidPurStats;->getUidPurStatsService()Lcom/oplus/network/IOplusUidPurStats;

    move-result-object v2

    invoke-interface {v2}, Lcom/oplus/network/IOplusUidPurStats;->fetchAppFreezeSynInfoList()[Lcom/oplus/network/stats/AppFreezeSyncInfo;

    move-result-object v2

    .line 141
    .local v2, "array":[Lcom/oplus/network/stats/AppFreezeSyncInfo;
    if-nez v2, :cond_0

    .line 142
    return-object v0

    .line 144
    :cond_0
    array-length v3, v2

    .line 145
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 146
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .local v5, "jobj":Lorg/json/JSONObject;
    const-string v6, "mUid"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeSyncInfo;->mSyn:Lcom/oplus/network/stats/AppFreezeSync;

    iget v7, v7, Lcom/oplus/network/stats/AppFreezeSync;->mUid:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    const-string v6, "mOccurFlag"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeSyncInfo;->mSyn:Lcom/oplus/network/stats/AppFreezeSync;

    iget v7, v7, Lcom/oplus/network/stats/AppFreezeSync;->mOccurFlag:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    const-string v6, "mAddBlockTime"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeSyncInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    iget-wide v7, v7, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 150
    const-string v6, "mRemoveBlockTime"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeSyncInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    iget-wide v7, v7, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    const-string v6, "mSendResetTime"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeSyncInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    iget-wide v7, v7, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 152
    const-string v6, "mEnterFgTime"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeSyncInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    iget-wide v7, v7, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 153
    const-string v6, "mEnterBgTime"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeSyncInfo;->mHistory:Lcom/oplus/network/stats/AppFreezeHistory;

    iget-wide v7, v7, Lcom/oplus/network/stats/AppFreezeHistory;->mAddBlockTime:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 154
    const-string v6, "mAppName"

    aget-object v7, v2, v4

    iget-object v7, v7, Lcom/oplus/network/stats/AppFreezeSyncInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 145
    nop

    .end local v5    # "jobj":Lorg/json/JSONObject;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 158
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "array":[Lcom/oplus/network/stats/AppFreezeSyncInfo;
    .end local v3    # "size":I
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusUidPurStats"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    return-object v0
.end method

.method public blacklist getNoDataUids()[I
    .locals 3

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusUidPurStats;->getUidPurStatsService()Lcom/oplus/network/IOplusUidPurStats;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/network/IOplusUidPurStats;->getNoDataUids()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusUidPurStats"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 106
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getStatsCheckStatus()Z
    .locals 3

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusUidPurStats;->getUidPurStatsService()Lcom/oplus/network/IOplusUidPurStats;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/network/IOplusUidPurStats;->getStatsCheckStatus()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusUidPurStats"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 96
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isUidNoData(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 112
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusUidPurStats;->getUidPurStatsService()Lcom/oplus/network/IOplusUidPurStats;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/network/IOplusUidPurStats;->isUidNoData(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusUidPurStats"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist registerUidNwStatusChange(Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;)V
    .locals 2
    .param p1, "cb"    # Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;

    .line 121
    const-string v0, "OplusUidPurStats"

    const-string v1, "registerUidNwStatusChange start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/oplus/network/OplusUidPurStats;->mCbList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/oplus/network/OplusUidPurStats;->mCbList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/oplus/network/OplusUidPurStats;->mCbList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unregisterUidNwStatusChange(Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;)V
    .locals 2
    .param p1, "cb"    # Lcom/oplus/network/OplusUidPurStats$IUidNwChangeCb;

    .line 130
    iget-object v0, p0, Lcom/oplus/network/OplusUidPurStats;->mCbList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/oplus/network/OplusUidPurStats;->mCbList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/oplus/network/OplusUidPurStats;->mCbList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
