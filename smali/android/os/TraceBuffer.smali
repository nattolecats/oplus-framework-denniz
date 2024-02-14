.class public Landroid/os/TraceBuffer;
.super Ljava/lang/Object;
.source "TraceBuffer.java"

# interfaces
.implements Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TraceBuffer$FlushOutObserver;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist DEBUG_PRIVATE:Z

.field private static final blacklist SYS_LOG_TAG:Ljava/lang/String; = "persist.onetrace.logtag"

.field private static final blacklist TAG:Ljava/lang/String; = "TraceBuffer"


# instance fields
.field private blacklist mAction:Landroid/os/TraceBuffer$FlushOutObserver;

.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mFlushPeriodTime:J

.field private final blacklist mHeap:Landroid/os/TraceStack;

.field private blacklist mLastFlushTimeMillis:J

.field private final blacklist mMaxCacheCapacity:I

.field private volatile blacklist mMinLimitedDurationTimeMicro:J

.field private final blacklist mTraceFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/os/TraceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 30
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "persist.onetrace.logtag"

    if-nez v0, :cond_1

    .line 32
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/os/TraceBuffer;->DEBUG:Z

    .line 34
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/TraceBuffer;->DEBUG_PRIVATE:Z

    return-void
.end method

.method public constructor blacklist <init>(JI)V
    .locals 6
    .param p1, "flushPeriodTime"    # J
    .param p3, "capacity"    # I

    .line 55
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/TraceBuffer;-><init>(JIJ)V

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(JIJ)V
    .locals 2
    .param p1, "flushPeriodTime"    # J
    .param p3, "capacity"    # I
    .param p4, "limitDurationTime"    # J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/TraceBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/os/TraceBuffer$$ExternalSyntheticLambda0;-><init>(Landroid/os/TraceBuffer;)V

    iput-object v0, p0, Landroid/os/TraceBuffer;->mTraceFilter:Ljava/util/function/Predicate;

    .line 45
    new-instance v0, Landroid/os/TraceStack;

    invoke-direct {v0}, Landroid/os/TraceStack;-><init>()V

    iput-object v0, p0, Landroid/os/TraceBuffer;->mHeap:Landroid/os/TraceStack;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/TraceBuffer;->mLastFlushTimeMillis:J

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/TraceBuffer;->mAction:Landroid/os/TraceBuffer$FlushOutObserver;

    .line 59
    iput-wide p1, p0, Landroid/os/TraceBuffer;->mFlushPeriodTime:J

    .line 60
    iput p3, p0, Landroid/os/TraceBuffer;->mMaxCacheCapacity:I

    .line 61
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/TraceBuffer;->mMinLimitedDurationTimeMicro:J

    .line 62
    return-void
.end method

.method private blacklist flush()V
    .locals 2

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/TraceBuffer;->flush(J)V

    .line 152
    return-void
.end method

.method private blacklist flush(J)V
    .locals 2
    .param p1, "timeStamp"    # J

    .line 155
    iput-wide p1, p0, Landroid/os/TraceBuffer;->mLastFlushTimeMillis:J

    .line 157
    iget-object v0, p0, Landroid/os/TraceBuffer;->mAction:Landroid/os/TraceBuffer$FlushOutObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/TraceBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    .line 159
    .local v0, "bytes":[B
    iget-object v1, p0, Landroid/os/TraceBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 160
    iget-object v1, p0, Landroid/os/TraceBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 162
    iget-object v1, p0, Landroid/os/TraceBuffer;->mAction:Landroid/os/TraceBuffer$FlushOutObserver;

    invoke-interface {v1, v0}, Landroid/os/TraceBuffer$FlushOutObserver;->flushOut([B)V

    .line 164
    .end local v0    # "bytes":[B
    :cond_0
    return-void
.end method

.method private blacklist writeTraceContent(Landroid/os/TraceInfo;Landroid/os/ContentFilter;)V
    .locals 1
    .param p1, "item"    # Landroid/os/TraceInfo;
    .param p2, "filter"    # Landroid/os/ContentFilter;

    .line 115
    if-eqz p2, :cond_0

    .line 116
    iget-object v0, p1, Landroid/os/TraceInfo;->content:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/ContentFilter;->matchContent(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Landroid/os/TraceInfo;->contentId:I

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Landroid/os/TraceBuffer;->writeTraceInfo(Landroid/os/TraceInfo;)V

    .line 119
    return-void
.end method

.method private blacklist writeTraceInfo(Landroid/os/TraceInfo;)V
    .locals 7
    .param p1, "item"    # Landroid/os/TraceInfo;

    .line 122
    invoke-virtual {p1}, Landroid/os/TraceInfo;->getSize()I

    move-result v0

    .line 124
    .local v0, "size":I
    iget-object v1, p0, Landroid/os/TraceBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 125
    invoke-direct {p0}, Landroid/os/TraceBuffer;->flush()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 128
    .local v1, "timeStamp":J
    iget-wide v3, p0, Landroid/os/TraceBuffer;->mLastFlushTimeMillis:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    .line 129
    iput-wide v1, p0, Landroid/os/TraceBuffer;->mLastFlushTimeMillis:J

    goto :goto_0

    .line 130
    :cond_1
    sub-long v3, v1, v3

    iget-wide v5, p0, Landroid/os/TraceBuffer;->mFlushPeriodTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 131
    invoke-direct {p0, v1, v2}, Landroid/os/TraceBuffer;->flush(J)V

    .line 135
    .end local v1    # "timeStamp":J
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/os/TraceBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    .line 136
    iget v1, p0, Landroid/os/TraceBuffer;->mMaxCacheCapacity:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/os/TraceBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    .line 139
    :cond_3
    iget-object v1, p0, Landroid/os/TraceBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v0, :cond_5

    .line 141
    sget-boolean v1, Landroid/os/TraceBuffer;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of trace info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which is over the size of L1 buffer. The remain size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/TraceBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    .line 143
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string v2, "TraceBuffer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_4
    return-void

    .line 147
    :cond_5
    iget-object v1, p0, Landroid/os/TraceBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Landroid/os/TraceInfo;->writeTo(Ljava/nio/ByteBuffer;)V

    .line 148
    return-void
.end method


# virtual methods
.method public blacklist asyncBegin(Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 88
    new-instance v0, Landroid/os/TraceInfo;

    invoke-direct {v0, p2, p3}, Landroid/os/TraceInfo;-><init>(Ljava/lang/String;I)V

    .line 89
    .local v0, "item":Landroid/os/TraceInfo;
    new-instance v1, Landroid/os/TraceBuffer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/os/TraceBuffer$$ExternalSyntheticLambda2;-><init>(Landroid/os/TraceBuffer;Landroid/os/TraceInfo;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public blacklist asyncEnd(Ljava/util/concurrent/Executor;Ljava/lang/String;IILandroid/os/ContentFilter;)V
    .locals 11
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "cookie"    # I
    .param p4, "endTid"    # I
    .param p5, "filter"    # Landroid/os/ContentFilter;

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v8

    .line 96
    .local v8, "endTime":J
    new-instance v10, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, v8

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/os/TraceBuffer$$ExternalSyntheticLambda1;-><init>(Landroid/os/TraceBuffer;Ljava/lang/String;IIJLandroid/os/ContentFilter;)V

    move-object v0, p1

    invoke-interface {p1, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public blacklist begin(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Landroid/os/TraceBuffer;->mHeap:Landroid/os/TraceStack;

    invoke-virtual {v0, p1}, Landroid/os/TraceStack;->beginMethod(Ljava/lang/String;)Landroid/os/TraceInfo;

    .line 70
    return-void
.end method

.method public blacklist end(Landroid/os/ContentFilter;)V
    .locals 4
    .param p1, "filter"    # Landroid/os/ContentFilter;

    .line 73
    iget-object v0, p0, Landroid/os/TraceBuffer;->mHeap:Landroid/os/TraceStack;

    invoke-virtual {v0}, Landroid/os/TraceStack;->endMethod()Landroid/os/TraceInfo;

    move-result-object v0

    .line 74
    .local v0, "item":Landroid/os/TraceInfo;
    iget-object v1, p0, Landroid/os/TraceBuffer;->mTraceFilter:Ljava/util/function/Predicate;

    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    sget-boolean v1, Landroid/os/TraceBuffer;->DEBUG_PRIVATE:Z

    if-eqz v1, :cond_1

    .line 76
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/TraceInfo;->content:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "null"

    .line 77
    .local v1, "content":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter out the trace with content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TraceBuffer"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v1    # "content":Ljava/lang/String;
    :cond_1
    return-void

    .line 83
    :cond_2
    invoke-direct {p0, v0, p1}, Landroid/os/TraceBuffer;->writeTraceContent(Landroid/os/TraceInfo;Landroid/os/ContentFilter;)V

    .line 84
    return-void
.end method

.method synthetic blacklist lambda$asyncBegin$1$android-os-TraceBuffer(Landroid/os/TraceInfo;)V
    .locals 1
    .param p1, "item"    # Landroid/os/TraceInfo;

    .line 89
    iget-object v0, p0, Landroid/os/TraceBuffer;->mHeap:Landroid/os/TraceStack;

    invoke-virtual {v0, p1}, Landroid/os/TraceStack;->beginMethodAsync(Landroid/os/TraceInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$asyncEnd$2$android-os-TraceBuffer(Ljava/lang/String;IIJLandroid/os/ContentFilter;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "cookie"    # I
    .param p3, "endTid"    # I
    .param p4, "endTime"    # J
    .param p6, "filter"    # Landroid/os/ContentFilter;

    .line 97
    iget-object v0, p0, Landroid/os/TraceBuffer;->mHeap:Landroid/os/TraceStack;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/TraceStack;->endMethodAsync(Ljava/lang/String;IIJ)Landroid/os/TraceInfo;

    move-result-object v0

    .line 98
    .local v0, "item":Landroid/os/TraceInfo;
    if-nez v0, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    invoke-direct {p0, v0, p6}, Landroid/os/TraceBuffer;->writeTraceContent(Landroid/os/TraceInfo;Landroid/os/ContentFilter;)V

    .line 103
    return-void
.end method

.method synthetic blacklist lambda$new$0$android-os-TraceBuffer(Landroid/os/TraceInfo;)Z
    .locals 4
    .param p1, "traceInfo"    # Landroid/os/TraceInfo;

    .line 38
    if-eqz p1, :cond_1

    .line 39
    invoke-static {}, Landroid/os/OplusTraceManager;->isForeground()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/TraceInfo;->getDuration()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/TraceBuffer;->mMinLimitedDurationTimeMicro:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 38
    :goto_1
    return v0
.end method

.method public blacklist onLimitChanged(J)V
    .locals 2
    .param p1, "durationTimeMicro"    # J

    .line 108
    sget-boolean v0, Landroid/os/TraceBuffer;->DEBUG_PRIVATE:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update duration limit timeMicro to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TraceBuffer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/TraceBuffer;->mMinLimitedDurationTimeMicro:J

    .line 112
    return-void
.end method

.method public blacklist setFlushActionObserver(Landroid/os/TraceBuffer$FlushOutObserver;)V
    .locals 0
    .param p1, "flushAction"    # Landroid/os/TraceBuffer$FlushOutObserver;

    .line 65
    iput-object p1, p0, Landroid/os/TraceBuffer;->mAction:Landroid/os/TraceBuffer$FlushOutObserver;

    .line 66
    return-void
.end method
