.class public Landroid/net/wifi/owm/OwmDnsMonitor;
.super Ljava/lang/Object;
.source "OwmDnsMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmMonitorCommon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;,
        Landroid/net/wifi/owm/OwmDnsMonitor$AsyncHandler;
    }
.end annotation


# static fields
.field private static final blacklist DNS_REFUSE_ERR_CODE:I = 0x5

.field private static final blacklist EVT_RECORD_SIZE:I = 0x8

.field private static final blacklist MSG_ADD_DNS_RECORD:I = 0x1

.field private static final blacklist MSG_BASE:I = 0x0

.field private static final blacklist RTT_GOOD_MS:I = 0x64

.field private static final blacklist RTT_NORM_MS:I = 0xc8

.field private static final blacklist RTT_POOR_MS:I = 0x12c

.field private static final blacklist TAG:Ljava/lang/String; = "OwmDnsMonitor"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmDnsMonitor;


# instance fields
.field private blacklist mAsyncHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEvtHijackCnt:I

.field private blacklist mFailCnt:I

.field private blacklist mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mRefuseCnt:I

.field private blacklist mRttAvgMs:I

.field private blacklist mRttBadCnt:I

.field private blacklist mRttGoodCnt:I

.field private blacklist mRttNormCnt:I

.field private blacklist mRttPoorCnt:I

.field private blacklist mTotalCnt:I

.field private blacklist mVerboseLoggingEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhandleAddDnsRecord(Landroid/net/wifi/owm/OwmDnsMonitor;Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmDnsMonitor;->handleAddDnsRecord(Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogD(Landroid/net/wifi/owm/OwmDnsMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmDnsMonitor;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmDnsMonitor;->sInstance:Landroid/net/wifi/owm/OwmDnsMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mContext:Landroid/content/Context;

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mFailCnt:I

    .line 63
    iput v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRefuseCnt:I

    .line 64
    iput v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mTotalCnt:I

    .line 66
    iput v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttGoodCnt:I

    .line 67
    iput v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttNormCnt:I

    .line 68
    iput v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttPoorCnt:I

    .line 69
    iput v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttBadCnt:I

    .line 70
    iput v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttAvgMs:I

    .line 73
    iput v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mEvtHijackCnt:I

    .line 75
    iput-object v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 76
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mVerboseLoggingEnabled:Z

    .line 77
    iput-object v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 92
    iput-object p1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 94
    new-instance v0, Landroid/net/wifi/owm/OwmDnsMonitor$AsyncHandler;

    iget-object v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getOwmMonitorThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmDnsMonitor$AsyncHandler;-><init>(Landroid/net/wifi/owm/OwmDnsMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mAsyncHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method private blacklist generateRecordToDatabaseMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 202
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mFailCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FailCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRefuseCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RefuseCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mTotalCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TotalCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttGoodCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttGoodCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttNormCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttNormCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttPoorCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttPoorCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttBadCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttBadCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttAvgMs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttAvgMs"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mEvtHijackCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EvtHijackCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmDnsMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 80
    sget-object v0, Landroid/net/wifi/owm/OwmDnsMonitor;->sInstance:Landroid/net/wifi/owm/OwmDnsMonitor;

    if-nez v0, :cond_1

    .line 81
    const-class v0, Landroid/net/wifi/owm/OwmDnsMonitor;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmDnsMonitor;->sInstance:Landroid/net/wifi/owm/OwmDnsMonitor;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Landroid/net/wifi/owm/OwmDnsMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmDnsMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmDnsMonitor;->sInstance:Landroid/net/wifi/owm/OwmDnsMonitor;

    .line 85
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 88
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmDnsMonitor;->sInstance:Landroid/net/wifi/owm/OwmDnsMonitor;

    return-object v0
.end method

.method private blacklist handleAddDnsRecord(Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;)V
    .locals 2
    .param p1, "dnsRecord"    # Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;

    .line 128
    if-nez p1, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->netId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmBaseUtils;->isWlanInterface(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    return-void

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAddDnsRecord, the dnsRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmDnsMonitor;->logD(Ljava/lang/String;)V

    .line 139
    iget v0, p1, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->latencyMs:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_2

    .line 140
    iget v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttGoodCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttGoodCnt:I

    goto :goto_0

    .line 141
    :cond_2
    iget v0, p1, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->latencyMs:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_3

    .line 142
    iget v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttNormCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttNormCnt:I

    goto :goto_0

    .line 143
    :cond_3
    iget v0, p1, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->latencyMs:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_4

    .line 144
    iget v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttPoorCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttPoorCnt:I

    goto :goto_0

    .line 146
    :cond_4
    iget v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttBadCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttBadCnt:I

    .line 149
    :goto_0
    iget v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttAvgMs:I

    iget v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mTotalCnt:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->latencyMs:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mTotalCnt:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttAvgMs:I

    .line 152
    iget v0, p1, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->errCode:I

    if-eqz v0, :cond_5

    .line 153
    iget v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mFailCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mFailCnt:I

    .line 155
    :cond_5
    iget v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mTotalCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mTotalCnt:I

    .line 158
    iget v0, p1, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->errCode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 159
    iget v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRefuseCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRefuseCnt:I

    .line 181
    :cond_6
    return-void
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 261
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmDnsMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addDnsRecord(IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # I
    .param p2, "latencyMs"    # I
    .param p3, "netId"    # I
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "ipAddresses"    # [Ljava/lang/String;

    .line 117
    new-instance v0, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;-><init>(Landroid/net/wifi/owm/OwmDnsMonitor;Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam-IA;)V

    .line 118
    .local v0, "dnsRecordParam":Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;
    iput-object p4, v0, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->hostname:Ljava/lang/String;

    .line 119
    iput-object p5, v0, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->ipAddresses:[Ljava/lang/String;

    .line 120
    iput p1, v0, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->errCode:I

    .line 121
    iput p2, v0, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->latencyMs:I

    .line 122
    iput p3, v0, Landroid/net/wifi/owm/OwmDnsMonitor$DnsRecordParam;->netId:I

    .line 124
    iget-object v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mAsyncHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 257
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mVerboseLoggingEnabled:Z

    .line 258
    return-void
.end method

.method public whitelist getCurRecordForNetHealth()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 220
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mFailCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FailCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRefuseCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RefuseCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mTotalCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TotalCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttGoodCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttGoodCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttNormCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttNormCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttPoorCnt:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttPoorCnt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttBadCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RttBadCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-object v0
.end method

.method public whitelist getDnsFailCnt()I
    .locals 1

    .line 249
    iget v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mFailCnt:I

    return v0
.end method

.method public whitelist getDnsRefuseCnt()I
    .locals 1

    .line 253
    iget v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRefuseCnt:I

    return v0
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 233
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmDnsMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 235
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist resetAllRecord()V
    .locals 1

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mFailCnt:I

    .line 186
    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRefuseCnt:I

    .line 187
    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mTotalCnt:I

    .line 189
    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttGoodCnt:I

    .line 190
    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttNormCnt:I

    .line 191
    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttPoorCnt:I

    .line 192
    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttBadCnt:I

    .line 193
    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mRttAvgMs:I

    .line 196
    iput v0, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mEvtHijackCnt:I

    .line 197
    return-void
.end method

.method public whitelist saveRecordToDatabase()V
    .locals 5

    .line 239
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmDnsMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 241
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveRecordToDatabase, the map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmDnsMonitor;->logD(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Landroid/net/wifi/owm/OwmDnsMonitor;->resetAllRecord()V

    .line 245
    iget-object v1, p0, Landroid/net/wifi/owm/OwmDnsMonitor;->mContext:Landroid/content/Context;

    const-string v2, "wifi_fool_proof"

    const-string v3, "OwmDnsMonitor"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 246
    return-void
.end method
