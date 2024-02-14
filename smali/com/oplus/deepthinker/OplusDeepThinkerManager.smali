.class Lcom/oplus/deepthinker/OplusDeepThinkerManager;
.super Ljava/lang/Object;
.source "OplusDeepThinkerManager.java"

# interfaces
.implements Lcom/oplus/deepthinker/IOplusDeepThinkerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;
    }
.end annotation


# static fields
.field public static final blacklist ARG_EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final blacklist ARG_EXTRA:Ljava/lang/String; = "extra"

.field public static final blacklist ARG_ID:Ljava/lang/String; = "id"

.field public static final blacklist ARG_PKG:Ljava/lang/String; = "pkg"

.field public static final blacklist COMMON_RESULT:Ljava/lang/String; = "common_result"

.field public static final blacklist EVENTFOUNTAIN_RANGE_END:I = 0x30d3f

.field public static final blacklist EVENTFOUNTAIN_RANGE_START:I = 0x186a0

.field public static final blacklist FEATURE_ABILITY_INOUTDOOR:Ljava/lang/String; = "ability_in_outdoor"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusDeepThinkerManager"

.field public static final blacklist TARGET_EVENTFOUNTAIN:Ljava/lang/String; = "eventfountain_call_handle"

.field public static final blacklist TRIGGER_EVENT:Ljava/lang/String; = "trigger_event"


# instance fields
.field private blacklist mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mTriggereventRunnable:Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 76
    new-instance v0, Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-direct {v0, p1, p2}, Lcom/oplus/deepthinker/platform/server/ClientConnection;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    .line 77
    return-void
.end method


# virtual methods
.method public whitelist getAlgorithmPlatformVersion()I
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 86
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getPlatformVersion()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 91
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "getAlgorithmPlatformVersion"

    invoke-static {v1, v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getAppPredictResult(Ljava/lang/String;)Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
    .locals 3
    .param p1, "callerName"    # Ljava/lang/String;

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 128
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getAppPredictResult(Ljava/lang/String;)Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 133
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "getAppPredictResult"

    invoke-static {v1, v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppPredictResultMap(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "callerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;",
            ">;"
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 115
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getAppPredictResultMap(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 120
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "getAppPredictResultMap"

    invoke-static {v1, v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppQueueSortedByComplex()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 431
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getAppQueueSortedByComplex()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 436
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "getAppQueueSortedByComplex"

    invoke-static {v1, v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppQueueSortedByCount()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 418
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getAppQueueSortedByCount()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 423
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "getAppQueueSortedByCount"

    invoke-static {v1, v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppType(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 196
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getAppType(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 201
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "getAppType"

    invoke-static {v1, v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getAppTypeMap(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 208
    .local p1, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 209
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p1}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getAppTypeMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 214
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "getAppTypeMap"

    invoke-static {v1, v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAvailableEvent()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/eventhub/sdk/aidl/Event;",
            ">;"
        }
    .end annotation

    .line 378
    const-string v0, "getAvailableEvent"

    const-string v1, "OplusDeepThinkerManager"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v3}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 379
    .local v3, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v3, :cond_4

    .line 381
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v4, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/eventhub/sdk/aidl/Event;>;"
    invoke-virtual {v3}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->capability()Ljava/util/List;

    move-result-object v5

    .line 383
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v5, :cond_0

    .line 384
    return-object v2

    .line 386
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 387
    .local v7, "id":Ljava/lang/Integer;
    if-eqz v7, :cond_1

    .line 388
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v9, 0x186a0

    if-lt v8, v9, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v10, 0x30d3f

    if-gt v8, v10, :cond_1

    .line 389
    new-instance v8, Lcom/oplus/eventhub/sdk/aidl/Event;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-direct {v8, v10, v2}, Lcom/oplus/eventhub/sdk/aidl/Event;-><init>(ILandroid/os/Bundle;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    .end local v7    # "id":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 393
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_3

    .line 394
    return-object v4

    .line 398
    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/eventhub/sdk/aidl/Event;>;"
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    goto :goto_1

    .line 396
    :catch_0
    move-exception v4

    .line 397
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1, v0, v4}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 402
    .end local v3    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    goto :goto_2

    .line 400
    :catch_1
    move-exception v3

    .line 401
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v3}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v2
.end method

.method public whitelist getDeepSleepPredictResult()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    .locals 3

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 144
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getDeepSleepPredictResult()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 149
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "getDeepSleepPredictResult"

    invoke-static {v1, v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeepSleepTotalPredictResult()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
    .locals 3

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 170
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getDeepSleepTotalPredictResult()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 175
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "getDeepSleepTotalPredictResult"

    invoke-static {v1, v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getInOutDoorState()I
    .locals 7

    .line 234
    const-string v0, "OplusDeepThinkerManager"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v2}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v2

    .line 235
    .local v2, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v2, :cond_0

    .line 236
    const-string v3, "ability_in_outdoor"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 239
    :try_start_1
    const-string v4, "common_result"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    .line 240
    :catchall_0
    move-exception v4

    .line 241
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInOutDoorState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    .end local v2    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_0
    goto :goto_0

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getInOutDoorState"

    invoke-static {v0, v3, v2}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v1
.end method

.method public whitelist getInOutDoorState(Landroid/os/Bundle;)I
    .locals 7
    .param p1, "args"    # Landroid/os/Bundle;

    .line 254
    const-string v0, "OplusDeepThinkerManager"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v2}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v2

    .line 255
    .local v2, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v2, :cond_0

    .line 256
    const-string v3, "ability_in_outdoor"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 259
    :try_start_1
    const-string v4, "common_result"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    .line 260
    :catchall_0
    move-exception v4

    .line 261
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInOutDoorState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 267
    .end local v2    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_0
    goto :goto_0

    .line 265
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "getInOutDoorState"

    invoke-static {v0, v3, v2}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v1
.end method

.method public blacklist getLastDeepSleepRecord()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
    .locals 3

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 157
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getLastDeepSleepRecord()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 162
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "getLastDeepSleepRecord"

    invoke-static {v1, v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPredictAABResult()Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;
    .locals 3

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 102
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getPredictAABResult()Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 107
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "getPredictAABResult"

    invoke-static {v1, v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPredictResultWithFeedBack()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    .locals 3

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 183
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getPredictResultWithFeedBack()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 188
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusDeepThinkerManager"

    invoke-static {v2, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartGpsBssidList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    .line 222
    .local v0, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getSmartGpsBssidList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 227
    .end local v0    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_0
    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "getSmartGpsBssidList"

    invoke-static {v1, v2, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiLocationLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/deepthinker/userprofile/utils/WifiLocationLabelUtils;->getWifiLocationLabels(Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isAvailableEvent(Lcom/oplus/eventhub/sdk/aidl/Event;)Z
    .locals 2
    .param p1, "event"    # Lcom/oplus/eventhub/sdk/aidl/Event;

    .line 407
    invoke-virtual {p0}, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->getAvailableEvent()Ljava/util/List;

    move-result-object v0

    .line 408
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/eventhub/sdk/aidl/Event;>;"
    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 411
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist registerCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;)Z
    .locals 7
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    .param p2, "config"    # Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;

    .line 315
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;->getAllEvents()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 320
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 321
    .local v1, "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oplus/eventhub/sdk/aidl/Event;>;"
    invoke-virtual {p2}, Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;->getDeviceEventSet()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;

    .line 322
    .local v3, "deviceEvent":Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;
    if-eqz v3, :cond_1

    .line 323
    new-instance v4, Lcom/oplus/eventhub/sdk/aidl/Event;

    invoke-virtual {v3}, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->getEventType()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/oplus/eventhub/sdk/aidl/Event;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v3    # "deviceEvent":Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;
    :cond_1
    goto :goto_0

    .line 326
    :cond_2
    new-instance v2, Lcom/oplus/eventhub/sdk/aidl/EventConfig;

    invoke-direct {v2, v1}, Lcom/oplus/eventhub/sdk/aidl/EventConfig;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p0, p1, v2}, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->registerEventCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;Lcom/oplus/eventhub/sdk/aidl/EventConfig;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move v0, v3

    :cond_3
    return v0

    .line 316
    .end local v1    # "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oplus/eventhub/sdk/aidl/Event;>;"
    :cond_4
    :goto_1
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "registerCallback invalid para. null or without request config."

    invoke-static {v1, v2}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return v0
.end method

.method public blacklist registerEventCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;Lcom/oplus/eventhub/sdk/aidl/EventConfig;)I
    .locals 6
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    .param p2, "config"    # Lcom/oplus/eventhub/sdk/aidl/EventConfig;

    .line 339
    const-string v0, "OplusDeepThinkerManager"

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->getAllEvents()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 344
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 345
    .local v1, "fingerprint":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 347
    .local v2, "pid":I
    iget-object v3, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v3}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v3

    .line 348
    .local v3, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v3, :cond_1

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->registerEventCallback(Ljava/lang/String;Lcom/oplus/eventhub/sdk/aidl/IEventCallback;Lcom/oplus/eventhub/sdk/aidl/EventConfig;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 353
    .end local v1    # "fingerprint":I
    .end local v2    # "pid":I
    .end local v3    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_1
    goto :goto_0

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "registerEventCallback"

    invoke-static {v0, v2, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/16 v0, 0x80

    return v0

    .line 340
    :cond_2
    :goto_1
    const-string v1, "registerEventCallback invalid para. null or without request config."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/16 v0, 0x10

    return v0
.end method

.method public whitelist run(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 465
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 466
    return-void
.end method

.method public whitelist triggerHookEvent(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "extra"    # Landroid/os/Bundle;

    .line 294
    new-instance v0, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 295
    .local v0, "event":Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;
    invoke-virtual {p0, v0}, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->triggerHookEvent(Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;)V

    .line 296
    return-void
.end method

.method public whitelist triggerHookEvent(Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;)V
    .locals 5
    .param p1, "triggerEvent"    # Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;

    .line 273
    const-string v0, "OplusDeepThinkerManager"

    if-nez p1, :cond_0

    .line 274
    const-string v1, "triggerHookEvent null parameter."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void

    .line 278
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v1

    .line 279
    .local v1, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v1, :cond_1

    .line 280
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "event_id"

    invoke-virtual {p1}, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->getEventId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->getPid()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    const-string v3, "pkg"

    invoke-virtual {p1}, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v3, "extra"

    invoke-virtual {p1}, Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;->getExtraData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 285
    const-string v3, "eventfountain_call_handle"

    const-string v4, "trigger_event"

    invoke-virtual {v1, v3, v4, v2}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v1    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "triggerHookEvent"

    invoke-static {v0, v2, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist triggerHookEventAsync(Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "eventID"    # I
    .param p3, "uid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "extra"    # Landroid/os/Bundle;

    .line 299
    if-nez p1, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mTriggereventRunnable:Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;

    if-nez v0, :cond_1

    .line 303
    new-instance v0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;-><init>(Lcom/oplus/deepthinker/OplusDeepThinkerManager;IILjava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mTriggereventRunnable:Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;

    goto :goto_0

    .line 305
    :cond_1
    iput p2, v0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->mEventID:I

    .line 306
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mTriggereventRunnable:Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;

    iput p3, v0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->mUid:I

    .line 307
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mTriggereventRunnable:Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;

    iput-object p4, v0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->mPkg:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mTriggereventRunnable:Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;

    iput-object p5, v0, Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;->mExtra:Landroid/os/Bundle;

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mTriggereventRunnable:Lcom/oplus/deepthinker/OplusDeepThinkerManager$TriggerEventRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method public whitelist unregisterCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;

    .line 331
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 332
    const-string v1, "OplusDeepThinkerManager"

    const-string v2, "unRegisterCallback null parameter."

    invoke-static {v1, v2}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return v0

    .line 335
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->unregisterEventCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method public whitelist unregisterEventCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)I
    .locals 6
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;

    .line 358
    const-string v0, "OplusDeepThinkerManager"

    if-nez p1, :cond_0

    .line 359
    const-string v1, "unregisterEventCallback null parameter."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/16 v0, 0x10

    return v0

    .line 363
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 364
    .local v1, "fingerPrint":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 366
    .local v2, "pid":I
    iget-object v3, p0, Lcom/oplus/deepthinker/OplusDeepThinkerManager;->mClientConnection:Lcom/oplus/deepthinker/platform/server/ClientConnection;

    invoke-virtual {v3}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    move-result-object v3

    .line 367
    .local v3, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    if-eqz v3, :cond_1

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->unregisterEventCallback(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 372
    .end local v1    # "fingerPrint":I
    .end local v2    # "pid":I
    .end local v3    # "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    :cond_1
    goto :goto_0

    .line 370
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "unregisterEventCallback"

    invoke-static {v0, v2, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/16 v0, 0x80

    return v0
.end method
