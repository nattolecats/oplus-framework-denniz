.class public Landroid/telephony/ims/ImsRilConnector;
.super Ljava/lang/Object;
.source "ImsRilConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsRilConnector$ConnectionRetryHandler;,
        Landroid/telephony/ims/ImsRilConnector$IListener;,
        Landroid/telephony/ims/ImsRilConnector$IImsRilIndListener;
    }
.end annotation


# static fields
.field private static final blacklist IMS_EXT_SERVICE_CONNECT:I = 0x1

.field private static final blacklist IMS_EXT_SERVICE_CONNECT_IF_NEEDED:I = 0x2

.field private static final blacklist IMS_RETRY_TIMEOUT_MS:I = 0x1f4

.field private static final blacklist MAX_IMS_RETRY_COUNT:I = 0x8

.field private static final blacklist MTK_IMS_PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.ims"

.field private static final blacklist QCOM_IMS_PACKAGE_NAME:Ljava/lang/String; = "org.codeaurora.ims"

.field private static final blacklist isMTKPlatform:Z

.field private static final blacklist isQcomPlatform:Z


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist mBound:Z

.field private blacklist mConnectionRetryHandler:Landroid/os/Handler;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIImsRilIndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/ims/ImsRilConnector$IImsRilIndListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsRil:Landroid/telephony/ims/aidl/IImsRil;

.field private blacklist mImsRilInd:Landroid/telephony/ims/aidl/IImsRilInd;

.field private blacklist mImsRilServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mIsBinderAvailable:Z

.field private blacklist mListener:Landroid/telephony/ims/ImsRilConnector$IListener;

.field private blacklist mNeedCallback:Z

.field private blacklist mRetryCount:I

.field private blacklist mRilMgr:Landroid/telephony/ims/ImsRilManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnectionRetryHandler(Landroid/telephony/ims/ImsRilConnector;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsRilConnector;->mConnectionRetryHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/telephony/ims/ImsRilConnector;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsRilConnector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIImsRilIndListeners(Landroid/telephony/ims/ImsRilConnector;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsRilConnector;->mIImsRilIndListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsRil(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/aidl/IImsRil;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsRilConnector;->mImsRil:Landroid/telephony/ims/aidl/IImsRil;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsRilInd(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/aidl/IImsRilInd;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsRilConnector;->mImsRilInd:Landroid/telephony/ims/aidl/IImsRilInd;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/ImsRilConnector$IListener;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsRilConnector;->mListener:Landroid/telephony/ims/ImsRilConnector$IListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedCallback(Landroid/telephony/ims/ImsRilConnector;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/ims/ImsRilConnector;->mNeedCallback:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRilMgr(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/ImsRilManager;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsRilConnector;->mRilMgr:Landroid/telephony/ims/ImsRilManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsRil(Landroid/telephony/ims/ImsRilConnector;Landroid/telephony/ims/aidl/IImsRil;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsRilConnector;->mImsRil:Landroid/telephony/ims/aidl/IImsRil;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsRilInd(Landroid/telephony/ims/ImsRilConnector;Landroid/telephony/ims/aidl/IImsRilInd;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsRilConnector;->mImsRilInd:Landroid/telephony/ims/aidl/IImsRilInd;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBinderAvailable(Landroid/telephony/ims/ImsRilConnector;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ims/ImsRilConnector;->mIsBinderAvailable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRetryCount(Landroid/telephony/ims/ImsRilConnector;I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/ImsRilConnector;->mRetryCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRilMgr(Landroid/telephony/ims/ImsRilConnector;Landroid/telephony/ims/ImsRilManager;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsRilConnector;->mRilMgr:Landroid/telephony/ims/ImsRilManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanUp(Landroid/telephony/ims/ImsRilConnector;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/ImsRilConnector;->cleanUp()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 31
    nop

    .line 32
    const-string v0, "ro.boot.hardware"

    const-string v1, "unknow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "qcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Landroid/telephony/ims/ImsRilConnector;->isQcomPlatform:Z

    .line 33
    nop

    .line 34
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/ims/ImsRilConnector;->isMTKPlatform:Z

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/telephony/ims/ImsRilConnector$IListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/telephony/ims/ImsRilConnector$IListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/ims/ImsRilConnector;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsRilConnector$IListener;Landroid/os/Looper;)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/telephony/ims/ImsRilConnector$IListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/telephony/ims/ImsRilConnector$IListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "ImsRilConnector"

    iput-object v0, p0, Landroid/telephony/ims/ImsRilConnector;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsRilConnector;->mBound:Z

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/ims/ImsRilConnector;->mConnectionRetryHandler:Landroid/os/Handler;

    .line 54
    iput-boolean v0, p0, Landroid/telephony/ims/ImsRilConnector;->mIsBinderAvailable:Z

    .line 55
    iput-boolean v0, p0, Landroid/telephony/ims/ImsRilConnector;->mNeedCallback:Z

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsRilConnector;->mIImsRilIndListeners:Ljava/util/ArrayList;

    .line 59
    iput v0, p0, Landroid/telephony/ims/ImsRilConnector;->mRetryCount:I

    .line 190
    new-instance v0, Landroid/telephony/ims/ImsRilConnector$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsRilConnector$1;-><init>(Landroid/telephony/ims/ImsRilConnector;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsRilConnector;->mImsRilServiceConnection:Landroid/content/ServiceConnection;

    .line 73
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 76
    iput-object p1, p0, Landroid/telephony/ims/ImsRilConnector;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Landroid/telephony/ims/ImsRilConnector;->mListener:Landroid/telephony/ims/ImsRilConnector$IListener;

    .line 78
    new-instance v0, Landroid/telephony/ims/ImsRilConnector$ConnectionRetryHandler;

    invoke-direct {v0, p0, p3}, Landroid/telephony/ims/ImsRilConnector$ConnectionRetryHandler;-><init>(Landroid/telephony/ims/ImsRilConnector;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsRilConnector;->mConnectionRetryHandler:Landroid/os/Handler;

    .line 79
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "context, listener and looper should not be null "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist cleanUp()V
    .locals 2

    .line 269
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector;->mConnectionRetryHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsRilConnector;->mImsRil:Landroid/telephony/ims/aidl/IImsRil;

    .line 271
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector;->mRilMgr:Landroid/telephony/ims/ImsRilManager;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Landroid/telephony/ims/ImsRilManager;->dispose()V

    .line 274
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist bindImsRilService()V
    .locals 2

    .line 120
    const-string v0, "ro.build.tablet.with_modem"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "ro.carrier"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi-only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsRilConnector;->bindImsRilServiceIfExist()Z

    .line 126
    return-void
.end method

.method public blacklist bindImsRilServiceIfExist()Z
    .locals 7

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    sget-boolean v1, Landroid/telephony/ims/ImsRilConnector;->isQcomPlatform:Z

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "org.codeaurora.ims"

    const-string v2, "org.codeaurora.ims.ImsRilService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 139
    :cond_0
    sget-boolean v1, Landroid/telephony/ims/ImsRilConnector;->isMTKPlatform:Z

    if-eqz v1, :cond_2

    .line 140
    const-string v1, "com.mediatek.ims"

    const-string v2, "com.mediatek.ims.ImsRilService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    :goto_0
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/telephony/ims/ImsRilConnector;->mImsRilServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/ims/ImsRilConnector;->mBound:Z

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to bind ImsRilService service returned with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/ims/ImsRilConnector;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRilConnector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-boolean v1, p0, Landroid/telephony/ims/ImsRilConnector;->mBound:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/telephony/ims/ImsRilConnector;->mRetryCount:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 151
    iget-object v2, p0, Landroid/telephony/ims/ImsRilConnector;->mConnectionRetryHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    shl-int v1, v3, v1

    mul-int/lit16 v1, v1, 0x1f4

    int-to-long v5, v1

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 153
    iget v1, p0, Landroid/telephony/ims/ImsRilConnector;->mRetryCount:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/telephony/ims/ImsRilConnector;->mRetryCount:I

    .line 156
    :cond_1
    iget-boolean v1, p0, Landroid/telephony/ims/ImsRilConnector;->mBound:Z

    return v1

    .line 142
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist connect()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Landroid/telephony/ims/ImsRilConnector;->bindImsRilService()V

    .line 84
    return-void
.end method

.method public blacklist connect(Z)Z
    .locals 1
    .param p1, "needCallback"    # Z

    .line 131
    iput-boolean p1, p0, Landroid/telephony/ims/ImsRilConnector;->mNeedCallback:Z

    .line 132
    invoke-virtual {p0}, Landroid/telephony/ims/ImsRilConnector;->bindImsRilServiceIfExist()Z

    move-result v0

    return v0
.end method

.method public blacklist disconnect()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsRilConnector;->mListener:Landroid/telephony/ims/ImsRilConnector$IListener;

    .line 89
    invoke-virtual {p0}, Landroid/telephony/ims/ImsRilConnector;->unbindImsRilService()V

    .line 90
    invoke-direct {p0}, Landroid/telephony/ims/ImsRilConnector;->cleanUp()V

    .line 91
    return-void
.end method

.method public blacklist isBinderAlive()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Landroid/telephony/ims/ImsRilConnector;->mIsBinderAvailable:Z

    return v0
.end method

.method public blacklist registerImsRilIndExternal(Landroid/telephony/ims/ImsRilConnector$IImsRilIndListener;)V
    .locals 2
    .param p1, "cb"    # Landroid/telephony/ims/ImsRilConnector$IImsRilIndListener;

    .line 162
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector;->mIImsRilIndListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector;->mIImsRilIndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector;->mIImsRilIndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_0
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist unbindImsRilService()V
    .locals 2

    .line 183
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/telephony/ims/ImsRilConnector;->mBound:Z

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector;->mImsRilServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsRilConnector;->mBound:Z

    .line 187
    :cond_0
    return-void
.end method

.method public blacklist unregisterImsRilIndExternal(Landroid/telephony/ims/ImsRilConnector$IImsRilIndListener;)V
    .locals 2
    .param p1, "cb"    # Landroid/telephony/ims/ImsRilConnector$IImsRilIndListener;

    .line 170
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector;->mIImsRilIndListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector;->mIImsRilIndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector;->mIImsRilIndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
