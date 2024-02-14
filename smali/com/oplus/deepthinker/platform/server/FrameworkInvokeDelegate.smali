.class public Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
.super Ljava/lang/Object;
.source "FrameworkInvokeDelegate.java"


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

.field private static final blacklist TAG:Ljava/lang/String; = "FrameworkInvokeDelegate"

.field private static final blacklist TEMP_HOLDER:I = -0x1

.field private static final blacklist TRANSACTION_availableState:I = 0x4

.field private static final blacklist TRANSACTION_call:I = 0x7

.field private static final blacklist TRANSACTION_capability:I = 0x5

.field private static final blacklist TRANSACTION_exchange:I = 0x8

.field private static final blacklist TRANSACTION_getAllPeriodDurationTopApps:I = 0x3ef

.field private static final blacklist TRANSACTION_getAllPeriodFrequencyTopApps:I = 0x3ee

.field private static final blacklist TRANSACTION_getAppPredictResult:I = 0x3f2

.field private static final blacklist TRANSACTION_getAppPredictResultMap:I = 0x3f1

.field private static final blacklist TRANSACTION_getAppQueueSortedByComplex:I = 0x3eb

.field private static final blacklist TRANSACTION_getAppQueueSortedByCount:I = 0x3ea

.field private static final blacklist TRANSACTION_getAppQueueSortedByTime:I = 0x3e9

.field private static final blacklist TRANSACTION_getAppType:I = 0x3f3

.field private static final blacklist TRANSACTION_getAppTypeMap:I = 0x3f4

.field private static final blacklist TRANSACTION_getCertainPeriodDurationTopApps:I = 0x3ed

.field private static final blacklist TRANSACTION_getCertainPeriodFrequencyTopApps:I = 0x3ec

.field private static final blacklist TRANSACTION_getDeepSleepPredictResult:I = 0xbb9

.field private static final blacklist TRANSACTION_getDeepSleepTotalPredictResult:I = 0xbbb

.field private static final blacklist TRANSACTION_getIdleScreenResultInLongTime:I = 0xbbf

.field private static final blacklist TRANSACTION_getIdleScreenResultInMiddleTime:I = 0xbbe

.field private static final blacklist TRANSACTION_getIdleScreenResultInShortTime:I = 0xbbd

.field private static final blacklist TRANSACTION_getLastDeepSleepRecord:I = 0xbba

.field private static final blacklist TRANSACTION_getPlatformVersion:I = 0x2

.field private static final blacklist TRANSACTION_getPredictAABResult:I = 0x3f0

.field private static final blacklist TRANSACTION_getPredictResultWithFeedBack:I = 0xbbc

.field private static final blacklist TRANSACTION_getSmartGpsBssidList:I = 0xfa1

.field private static final blacklist TRANSACTION_registerEventCallback:I = 0x7d1

.field private static final blacklist TRANSACTION_requestGrantPermission:I = 0x6

.field private static final blacklist TRANSACTION_unregisterEventCallback:I = 0x7d2

.field private static final blacklist VAL_PARCELABLE:I = 0x4


# instance fields
.field private blacklist mHolder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/deepthinker/platform/server/EventCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "server"    # Landroid/os/IBinder;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mHolder:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    .line 58
    return-void
.end method

.method private static blacklist writeEvent(Landroid/os/Parcel;Lcom/oplus/eventhub/sdk/aidl/Event;)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "event"    # Lcom/oplus/eventhub/sdk/aidl/Event;

    .line 502
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    if-nez p1, :cond_0

    .line 504
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_0
    const-string v0, "com.oplus.deepthinker.sdk.app.aidl.eventfountain.Event"

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/oplus/eventhub/sdk/aidl/Event;->writeToParcel(Landroid/os/Parcel;I)V

    .line 509
    :goto_0
    return-void
.end method

.method private static blacklist writeEventAboveT(Landroid/os/Parcel;Lcom/oplus/eventhub/sdk/aidl/Event;)V
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "event"    # Lcom/oplus/eventhub/sdk/aidl/Event;

    .line 520
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 524
    .local v0, "tempLengthPos":I
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 527
    .local v1, "startPos":I
    if-nez p1, :cond_0

    .line 528
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_0
    const-string v2, "com.oplus.deepthinker.sdk.app.aidl.eventfountain.Event"

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 531
    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2}, Lcom/oplus/eventhub/sdk/aidl/Event;->writeToParcel(Landroid/os/Parcel;I)V

    .line 535
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 537
    .local v2, "endPos":I
    sub-int v3, v2, v1

    .line 539
    .local v3, "eventObjectLength":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 541
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 544
    return-void
.end method

.method private blacklist writeEventConfig(Landroid/os/Parcel;Lcom/oplus/eventhub/sdk/aidl/EventConfig;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "config"    # Lcom/oplus/eventhub/sdk/aidl/EventConfig;

    .line 486
    invoke-virtual {p2}, Lcom/oplus/eventhub/sdk/aidl/EventConfig;->getEventSet()Ljava/util/Set;

    move-result-object v0

    .line 487
    .local v0, "eventSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/oplus/eventhub/sdk/aidl/Event;>;"
    if-nez v0, :cond_0

    .line 488
    return-void

    .line 491
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/eventhub/sdk/aidl/Event;

    .line 493
    .local v2, "event":Lcom/oplus/eventhub/sdk/aidl/Event;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    .line 494
    invoke-static {p1, v2}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->writeEventAboveT(Landroid/os/Parcel;Lcom/oplus/eventhub/sdk/aidl/Event;)V

    goto :goto_1

    .line 496
    :cond_1
    invoke-static {p1, v2}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->writeEvent(Landroid/os/Parcel;Lcom/oplus/eventhub/sdk/aidl/Event;)V

    .line 498
    .end local v2    # "event":Lcom/oplus/eventhub/sdk/aidl/Event;
    :goto_1
    goto :goto_0

    .line 499
    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist availableState(ILjava/lang/String;)I
    .locals 5
    .param p1, "code"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 89
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 98
    nop

    .line 99
    return v2

    .line 96
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 98
    throw v2
.end method

.method public blacklist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 138
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 142
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    :goto_0
    iget-object v3, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "_result":Landroid/os/Bundle;
    goto :goto_1

    .line 152
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x0

    .line 155
    .restart local v2    # "_result":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    nop

    .line 158
    return-object v2

    .line 155
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    throw v2
.end method

.method public blacklist capability()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 107
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 111
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 113
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    nop

    .line 116
    return-object v2

    .line 113
    .end local v2    # "_result":Ljava/util/List;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    throw v2
.end method

.method public blacklist exchange(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 163
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 166
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 170
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    nop

    .line 177
    return-object v2

    .line 174
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw v2
.end method

.method public blacklist getAppPredictResult(Ljava/lang/String;)Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
    .locals 5
    .param p1, "callerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 275
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 278
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 282
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    sget-object v2, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
    goto :goto_0

    .line 285
    .end local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
    :cond_0
    const/4 v2, 0x0

    .line 288
    .restart local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    nop

    .line 291
    return-object v2

    .line 288
    .end local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    throw v2
.end method

.method public blacklist getAppPredictResultMap(Ljava/lang/String;)Ljava/util/List;
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 265
    sget-object v2, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    nop

    .line 270
    return-object v2

    .line 267
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    throw v2
.end method

.method public blacklist getAppQueueSortedByComplex()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3eb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    nop

    .line 230
    return-object v2

    .line 227
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    throw v2
.end method

.method public blacklist getAppQueueSortedByCount()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 203
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 206
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3ea

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    nop

    .line 214
    return-object v2

    .line 211
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    throw v2
.end method

.method public blacklist getAppQueueSortedByTime()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 187
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 190
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 192
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    nop

    .line 198
    return-object v2

    .line 195
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    throw v2
.end method

.method public blacklist getAppType(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 303
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    nop

    .line 308
    return v2

    .line 305
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    throw v2
.end method

.method public blacklist getAppTypeMap(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    .local p1, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 318
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 321
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 323
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 325
    nop

    .line 326
    return-object v2

    .line 323
    .end local v2    # "_result":Ljava/util/Map;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 325
    throw v2
.end method

.method public blacklist getDeepSleepPredictResult()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbb9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    sget-object v2, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    goto :goto_0

    .line 394
    .end local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    :cond_0
    const/4 v2, 0x0

    .line 397
    .restart local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 399
    nop

    .line 400
    return-object v2

    .line 397
    .end local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 399
    throw v2
.end method

.method public blacklist getDeepSleepTotalPredictResult()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 425
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 428
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbbb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    sget-object v2, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
    goto :goto_0

    .line 434
    .end local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
    :cond_0
    const/4 v2, 0x0

    .line 437
    .restart local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    nop

    .line 440
    return-object v2

    .line 437
    .end local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    throw v2
.end method

.method public blacklist getLastDeepSleepRecord()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 405
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 408
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbba

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    sget-object v2, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
    goto :goto_0

    .line 414
    .end local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
    :cond_0
    const/4 v2, 0x0

    .line 417
    .restart local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    nop

    .line 420
    return-object v2

    .line 417
    .end local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    throw v2
.end method

.method public blacklist getPlatformVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 70
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 73
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 75
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 76
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 79
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 80
    nop

    .line 81
    return v2

    .line 78
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 79
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 80
    throw v2
.end method

.method public blacklist getPredictAABResult()Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 238
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 241
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 243
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    sget-object v2, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;
    goto :goto_0

    .line 247
    .end local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;
    :cond_0
    const/4 v2, 0x0

    .line 250
    .restart local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    nop

    .line 253
    return-object v2

    .line 250
    .end local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    throw v2
.end method

.method public blacklist getPredictResultWithFeedBack()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 445
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbbc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    sget-object v2, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    goto :goto_0

    .line 454
    .end local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    :cond_0
    const/4 v2, 0x0

    .line 457
    .restart local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 459
    nop

    .line 460
    return-object v2

    .line 457
    .end local v2    # "_result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 459
    throw v2
.end method

.method public blacklist getRemote()Landroid/os/IBinder;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getSmartGpsBssidList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 471
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    nop

    .line 482
    return-object v2

    .line 479
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    throw v2
.end method

.method public blacklist registerEventCallback(Ljava/lang/String;Lcom/oplus/eventhub/sdk/aidl/IEventCallback;Lcom/oplus/eventhub/sdk/aidl/EventConfig;)I
    .locals 7
    .param p1, "fingerPrint"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    .param p3, "config"    # Lcom/oplus/eventhub/sdk/aidl/EventConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 333
    .local v1, "_reply":Landroid/os/Parcel;
    const/4 v2, 0x0

    .line 334
    .local v2, "delegate":Lcom/oplus/deepthinker/platform/server/EventCallbackDelegate;
    if-eqz p2, :cond_0

    .line 335
    new-instance v3, Lcom/oplus/deepthinker/platform/server/EventCallbackDelegate;

    invoke-direct {v3, p2}, Lcom/oplus/deepthinker/platform/server/EventCallbackDelegate;-><init>(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)V

    move-object v2, v3

    .line 338
    :cond_0
    :try_start_0
    const-string v3, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    if-eqz p2, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 341
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    .line 342
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    invoke-direct {p0, v0, p3}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->writeEventConfig(Landroid/os/Parcel;Lcom/oplus/eventhub/sdk/aidl/EventConfig;)V

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    :goto_1
    iget-object v5, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x7d1

    invoke-interface {v5, v6, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 350
    .local v4, "_result":I
    if-ne v4, v3, :cond_3

    .line 351
    iget-object v3, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mHolder:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :cond_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 356
    nop

    .line 357
    return v4

    .line 354
    .end local v4    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 356
    throw v3
.end method

.method public blacklist requestGrantPermission(Ljava/lang/String;)V
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 123
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    nop

    .line 131
    return-void

    .line 128
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    throw v2
.end method

.method public blacklist setRemote(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 61
    iput-object p1, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    .line 62
    return-void
.end method

.method public blacklist unregisterEventCallback(Ljava/lang/String;)I
    .locals 5
    .param p1, "fingerprint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 362
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.deepthinker.platform.server.IDeepThinkerBridge"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    iget-object v3, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mHolder:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    nop

    .line 375
    return v2

    .line 371
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    iget-object v3, p0, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->mHolder:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    throw v2
.end method
