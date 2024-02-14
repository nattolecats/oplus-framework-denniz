.class public Landroid/net/wifi/owm/OwmMultiMediaMonitor;
.super Ljava/lang/Object;
.source "OwmMultiMediaMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;
.implements Landroid/net/wifi/owm/IOwmNetHealthCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;,
        Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;
    }
.end annotation


# static fields
.field private static final blacklist EVT_RECORD_SIZE:I = 0x1

.field private static final blacklist MILLSEC_TO_SECOND:I = 0x3e8

.field public static final whitelist MSG_SYSTEM_EVENT_REGIST_OLK_CALLBACK:I = 0xc8

.field public static final whitelist MSG_VIDEO_EVENT_STUTTER_END_PKG:I = 0x65

.field public static final whitelist MSG_VIDEO_EVENT_STUTTER_START_PKG:I = 0x64

.field public static final whitelist MSG_VIDEO_EVENT_STUTTER_TIMEOUT_PKG:I = 0x67

.field public static final whitelist MSG_VIDEO_EVENT_SYNC_RSSI:I = 0x68

.field public static final whitelist MSG_VIDEO_EVENT_VIDEO_STOP_PKG:I = 0x66

.field private static final blacklist OLK_CALLBACK_MAX_REGISTER_RETRY_LIMIT:I = 0xc

.field private static final blacklist ONE_MINUTE:I = 0xea60

.field private static final blacklist STUTTERING_PKG_SIZE:I = 0x3

.field private static final blacklist STUTTER_ENTRY_ATLAS:I = 0x1

.field private static final blacklist STUTTER_ENTRY_OLK:I = 0x2

.field private static final blacklist STUTTER_OLK_FLAG:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "OwmMMMonitor"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmMultiMediaMonitor;


# instance fields
.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsLastRssiGood:Z

.field private blacklist mLastGoodRssiTimeStamp:J

.field private blacklist mLastStutterPkgName:Ljava/lang/String;

.field private blacklist mOLKStutteringApps:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOlkCb:Lcom/oplus/network/OlkManager$OlkListener;

.field private blacklist mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

.field private blacklist mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

.field private blacklist mStutterEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStutterReceiveTimeStamp:J

.field private blacklist mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTryToRegisterOlkCallbackInterval:I

.field private blacklist mTryToRegisterOlkCallbackTime:I

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mVideoStutterCnt:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOLKStutteringApps(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOLKStutteringApps:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStutteringAppList(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTryToRegisterOlkCallbackTime(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)I
    .locals 0

    iget p0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mTryToRegisterOlkCallbackTime:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcalculateAppStutterDuration(Landroid/net/wifi/owm/OwmMultiMediaMonitor;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->calculateAppStutterDuration(JILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcalculateGoodRssiStutterDuration(Landroid/net/wifi/owm/OwmMultiMediaMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->calculateGoodRssiStutterDuration(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misAppInStutteringList(Landroid/net/wifi/owm/OwmMultiMediaMonitor;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->isAppInStutteringList(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmMultiMediaMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterOlkCallback(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->registerOlkCallback()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateStutterEvtEnterRecord(Landroid/net/wifi/owm/OwmMultiMediaMonitor;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->updateStutterEvtEnterRecord(ILjava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->sInstance:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mContext:Landroid/content/Context;

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mVerboseLoggingEnabled:Z

    .line 69
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutterReceiveTimeStamp:J

    .line 70
    const/16 v4, 0x1388

    iput v4, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mTryToRegisterOlkCallbackInterval:I

    .line 71
    iput v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mTryToRegisterOlkCallbackTime:I

    .line 73
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOLKStutteringApps:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    iput-wide v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mLastGoodRssiTimeStamp:J

    .line 77
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mIsLastRssiGood:Z

    .line 79
    const-string v2, " "

    iput-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mLastStutterPkgName:Ljava/lang/String;

    .line 80
    iput v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mVideoStutterCnt:I

    .line 82
    new-instance v1, Landroid/net/wifi/owm/OwmMultiMediaMonitor$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor$1;-><init>(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)V

    iput-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOlkCb:Lcom/oplus/network/OlkManager$OlkListener;

    .line 109
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 110
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 111
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 112
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 114
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutterEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    iput-object p1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {p1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 120
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmRouterMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmRouterMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    .line 121
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmNetHealthMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 122
    new-instance v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getOwmMonitorThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor$AsyncHandler;-><init>(Landroid/net/wifi/owm/OwmMultiMediaMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 123
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->registerOlkCallback()V

    .line 124
    return-void
.end method

.method private blacklist addAppStutterEvtExitRecord(IJLjava/lang/String;)V
    .locals 6
    .param p1, "exitReason"    # I
    .param p2, "stutterDurationTime"    # J
    .param p4, "pkgName"    # Ljava/lang/String;

    .line 334
    invoke-direct {p0, p4}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->isAppInStutteringList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;

    .line 339
    .local v0, "currentAppStutter":Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;
    if-nez v0, :cond_1

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stutter record has been null when stutter exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OwmMMMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void

    .line 345
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->evtExitReason:Ljava/lang/String;

    .line 346
    iput-wide p2, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->durationTime:J

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->isUnderStutter:Z

    .line 348
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutterEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->durationTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", goodRssiDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->goodRssiDurationTime:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutterEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 354
    const-string v1, "Stutter Record full, upload to database now"

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->saveRecordToDatabase()V

    .line 357
    :cond_2
    return-void
.end method

.method private blacklist calculateAppStutterDuration(JILjava/lang/String;)V
    .locals 8
    .param p1, "stutterEndTimeStamp"    # J
    .param p3, "exitReason"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .line 282
    const-wide/16 v0, 0x0

    .line 284
    .local v0, "stutterDurTime":J
    invoke-direct {p0, p4}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->isAppInStutteringList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    return-void

    .line 288
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;

    .line 289
    .local v2, "currentAppStutter":Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;
    if-eqz v2, :cond_2

    iget-boolean v3, v2, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->isUnderStutter:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    iput-wide p1, v2, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->stutterEndTimeStamp:J

    .line 294
    iget-wide v3, v2, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->stutterStartTimeStamp:J

    sub-long v3, p1, v3

    add-long/2addr v0, v3

    .line 295
    iget-object v3, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "stutter duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v6, v0, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "S, good rssi "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v2, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->goodRssiDurationTime:J

    div-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "S, end with reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0, p3, v0, v1, p4}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->addAppStutterEvtExitRecord(IJLjava/lang/String;)V

    .line 301
    return-void

    .line 290
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist calculateGoodRssiStutterDuration(I)V
    .locals 10
    .param p1, "rssi"    # I

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 220
    .local v0, "newRssiTimeStamp":J
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->isGoodRssi()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 227
    :cond_0
    iget-wide v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mLastGoodRssiTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 228
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mLastGoodRssiTimeStamp:J

    .line 231
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_6

    .line 232
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 233
    .local v2, "stutteringItems":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 234
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 235
    .local v3, "stutteringItem":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 237
    .local v4, "appName":Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->isAppInStutteringList(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not handle this good rssi period for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 239
    goto :goto_0

    .line 242
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;

    .line 244
    .local v5, "currentAppStutter":Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;
    if-nez v5, :cond_3

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return good rssi exception for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 246
    goto :goto_0

    .line 249
    :cond_3
    iget-boolean v6, v5, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->isUnderStutter:Z

    if-eqz v6, :cond_5

    .line 250
    iget-wide v6, v5, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->stutterStartTimeStamp:J

    iget-wide v8, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mLastGoodRssiTimeStamp:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    iget-boolean v6, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mIsLastRssiGood:Z

    if-eqz v6, :cond_4

    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "use the begining of stutter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v5, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->stutterStartTimeStamp:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to calculate goodRssi duration, Last_RSSI_TimeStamp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mLastGoodRssiTimeStamp:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 253
    iget-wide v6, v5, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->goodRssiDurationTime:J

    iget-wide v8, v5, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->stutterStartTimeStamp:J

    sub-long v8, v0, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->goodRssiDurationTime:J

    .line 255
    iget-object v6, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    goto/16 :goto_0

    .line 259
    :cond_4
    iget-wide v6, v5, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->goodRssiDurationTime:J

    iget-wide v8, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mLastGoodRssiTimeStamp:J

    sub-long v8, v0, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->goodRssiDurationTime:J

    .line 260
    iget-object v6, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 261
    iget-object v6, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .end local v3    # "stutteringItem":Ljava/util/Map$Entry;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "currentAppStutter":Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;
    :cond_5
    goto/16 :goto_0

    .line 267
    .end local v2    # "stutteringItems":Ljava/util/Iterator;
    :cond_6
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mLastGoodRssiTimeStamp:J

    .line 268
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mIsLastRssiGood:Z

    .line 269
    return-void

    .line 221
    :cond_7
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mIsLastRssiGood:Z

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current Rssi not good, last Period Rssi Good ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mIsLastRssiGood:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method private blacklist generateRecordToDatabaseMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 582
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 584
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutterEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;

    .line 585
    .local v2, "record":Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;
    iget-object v3, v2, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->happenTime:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->toUploadMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .end local v2    # "record":Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;
    goto :goto_0

    .line 588
    :cond_0
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmMultiMediaMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 128
    sget-object v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->sInstance:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    if-nez v0, :cond_1

    .line 129
    const-class v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->sInstance:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->sInstance:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    .line 133
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 136
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->sInstance:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    return-object v0
.end method

.method private blacklist isAppInStutteringList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 361
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 362
    return v0

    .line 364
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    .line 365
    return v0

    .line 368
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 369
    const/4 v0, 0x1

    return v0

    .line 371
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is no more stuttering"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 372
    return v0
.end method

.method private blacklist isOlkServiceReady()Z
    .locals 2

    .line 536
    const-string v0, "opluslinkkit"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 537
    const-string v0, "OwmMMMonitor"

    const-string v1, "opluslinkkit is still null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v0, 0x0

    return v0

    .line 540
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 602
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 603
    const-string v0, "OwmMMMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    return-void
.end method

.method private blacklist registerOlkCallback()V
    .locals 5

    .line 545
    iget v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mTryToRegisterOlkCallbackTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mTryToRegisterOlkCallbackTime:I

    .line 546
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->isOlkServiceReady()Z

    move-result v0

    const-string v1, "OwmMMMonitor"

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mTryToRegisterOlkCallbackInterval:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it\'s "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mTryToRegisterOlkCallbackTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " time to regiter cb, olk service is not ready"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void

    .line 555
    :cond_1
    const/16 v0, 0x2f

    .line 558
    .local v0, "event":I
    iget-object v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oplus/network/OlkManager;->getInstance(Landroid/content/Context;)Lcom/oplus/network/OlkManager;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOlkCb:Lcom/oplus/network/OlkManager$OlkListener;

    invoke-virtual {v2, v0, v3}, Lcom/oplus/network/OlkManager;->registerInterfaceCallback(ILcom/oplus/network/OlkManager$OlkListener;)V

    .line 559
    const-string v2, "register OLK Callback finish "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void
.end method

.method private blacklist triggerTimingStutterParallel(JLjava/lang/String;)V
    .locals 3
    .param p1, "stutterStartTimeStamp"    # J
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 185
    invoke-direct {p0, p3}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->isAppInStutteringList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from same app stutter event, go on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 187
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " APP at the status of Stuttering, no more attention"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 192
    return-void

    .line 195
    :cond_1
    new-instance v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;

    invoke-direct {v0, p0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;-><init>(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)V

    .line 196
    .local v0, "currentAppStutterEvtRecord":Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;
    iput-wide p1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->stutterStartTimeStamp:J

    .line 197
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->happenTime:Ljava/lang/String;

    .line 199
    iput-wide p1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->stutterEndTimeStamp:J

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->isUnderStutter:Z

    .line 201
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    return-void
.end method

.method private blacklist updateStutterEvtEnterRecord(ILjava/lang/String;)V
    .locals 4
    .param p1, "stutterType"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 305
    invoke-direct {p0, p2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->isAppInStutteringList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;

    .line 310
    .local v0, "currentAppStutter":Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;
    if-nez v0, :cond_1

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stutter record has been null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 313
    return-void

    .line 315
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->stutterScene:Ljava/lang/String;

    .line 316
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmRouterMonitor:Landroid/net/wifi/owm/OwmRouterMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmRouterMonitor;->getApName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->apName:Ljava/lang/String;

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmBaseUtils;->getFreq()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->apFreq:Ljava/lang/String;

    .line 318
    iput-object p2, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->appHash:Ljava/lang/String;

    .line 320
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastFeatActHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->featHealthStat:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastRouterHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->routerHealthStat:Ljava/lang/String;

    .line 322
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastCoexistHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->coexistHealthStat:Ljava/lang/String;

    .line 324
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastL2HealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->l2HealthStat:Ljava/lang/String;

    .line 325
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastDhcpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    .line 326
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastDnsHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->dnsHealthStat:Ljava/lang/String;

    .line 327
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastGatewayHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    .line 328
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastHttpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->httpHealthStat:Ljava/lang/String;

    .line 329
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mOwmNetHealthMonitor:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->getLastTcpHealthMonitorRecord()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->tcpHealthStat:Ljava/lang/String;

    .line 330
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutteringAppList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void
.end method


# virtual methods
.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 598
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mVerboseLoggingEnabled:Z

    .line 599
    return-void
.end method

.method public whitelist getCurRecordForNetHealth()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 592
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 593
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 576
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 577
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist notifyStutterEndToWifi(ILjava/lang/String;)V
    .locals 2
    .param p1, "endCode"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 167
    if-nez p2, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 175
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") notify Stutter end to Wifi, reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public whitelist notifyVideoStutterToWifi(ILjava/lang/String;)V
    .locals 3
    .param p1, "stuParameter"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 140
    if-nez p2, :cond_0

    .line 141
    return-void

    .line 145
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutterReceiveTimeStamp:J

    .line 148
    invoke-direct {p0, p2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->isAppInStutteringList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mVideoStutterCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mVideoStutterCnt:I

    .line 153
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    return-void

    .line 158
    :cond_2
    iget-wide v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutterReceiveTimeStamp:J

    invoke-direct {p0, v0, v1, p2}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->triggerTimingStutterParallel(JLjava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this stutter happen on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutterReceiveTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total stutter until now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mVideoStutterCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->logD(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 5

    .line 566
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutterEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 567
    return-void

    .line 570
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 571
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mStutterEvtRecordList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 572
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const-string v3, "wifi_fool_proof"

    const-string v4, "OwmHttpMonitor"

    invoke-static {v1, v3, v4, v0, v2}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 573
    return-void
.end method

.method public whitelist setRssi(I)V
    .locals 3
    .param p1, "rssi"    # I

    .line 210
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 213
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mAsyncHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 4
    .param p1, "isConnected"    # Z

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 274
    .local v0, "wifiConnTimeStamp":J
    if-eqz p1, :cond_0

    .line 276
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor;->mLastGoodRssiTimeStamp:J

    .line 278
    :cond_0
    return-void
.end method
