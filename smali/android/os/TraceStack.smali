.class public Landroid/os/TraceStack;
.super Ljava/lang/Object;
.source "TraceStack.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist LEVEL_UNDEFINED:I = -0x1

.field private static final blacklist MAX_ASYN_SAFE_SIZE:I = 0x200

.field private static final blacklist SYS_LOG_TAG:Ljava/lang/String; = "persist.onetrace.logtag"

.field private static final blacklist TAG:Ljava/lang/String; = "TraceStack"


# instance fields
.field private final blacklist mAsyncTraceMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/os/TraceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTraceDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/TraceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTraceKeyBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 12
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    const-string v0, "persist.onetrace.logtag"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Landroid/os/TraceStack;->DEBUG:Z

    .line 12
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/os/TraceStack;->mTraceDeque:Ljava/util/ArrayDeque;

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/os/TraceStack;->mAsyncTraceMap:Ljava/util/LinkedHashMap;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/os/TraceStack;->mTraceKeyBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method blacklist beginMethod(JILjava/lang/String;)Landroid/os/TraceInfo;
    .locals 7
    .param p1, "startTimeStamp"    # J
    .param p3, "tid"    # I
    .param p4, "content"    # Ljava/lang/String;

    .line 29
    new-instance v6, Landroid/os/TraceInfo;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/TraceInfo;-><init>(JILjava/lang/String;Z)V

    .line 30
    .local v0, "info":Landroid/os/TraceInfo;
    iget-object v1, p0, Landroid/os/TraceStack;->mTraceDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iput v1, v0, Landroid/os/TraceInfo;->level:I

    .line 31
    iget-object v1, p0, Landroid/os/TraceStack;->mTraceDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 32
    return-object v0
.end method

.method blacklist beginMethod(Ljava/lang/String;)Landroid/os/TraceInfo;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/TraceStack;->beginMethod(JILjava/lang/String;)Landroid/os/TraceInfo;

    move-result-object v0

    return-object v0
.end method

.method blacklist beginMethodAsync(Landroid/os/TraceInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/os/TraceInfo;

    .line 51
    const/4 v0, -0x1

    iput v0, p1, Landroid/os/TraceInfo;->level:I

    .line 54
    iget-object v0, p0, Landroid/os/TraceStack;->mTraceKeyBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 55
    iget-object v0, p0, Landroid/os/TraceStack;->mTraceKeyBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/TraceInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/TraceInfo;->cookie:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/TraceStack;->mAsyncTraceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TraceInfo;

    .line 57
    .local v1, "lastInfo":Landroid/os/TraceInfo;
    sget-boolean v2, Landroid/os/TraceStack;->DEBUG:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The trace with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/TraceInfo;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/TraceInfo;->cookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already exist!!! #beginMethodAsync() may have been calledrepeatedly without #endMethodAsync()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "msg":Ljava/lang/String;
    const-string v3, "TraceStack"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/os/TraceStack;->mAsyncTraceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    const/16 v3, 0x200

    if-le v2, v3, :cond_1

    .line 66
    iget-object v2, p0, Landroid/os/TraceStack;->mAsyncTraceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_1
    return-void
.end method

.method blacklist endMethod()Landroid/os/TraceInfo;
    .locals 2

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/TraceStack;->endMethod(J)Landroid/os/TraceInfo;

    move-result-object v0

    return-object v0
.end method

.method blacklist endMethod(J)Landroid/os/TraceInfo;
    .locals 1
    .param p1, "endTimeStamp"    # J

    .line 42
    iget-object v0, p0, Landroid/os/TraceStack;->mTraceDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Landroid/os/TraceStack;->mTraceDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TraceInfo;

    .line 46
    .local v0, "info":Landroid/os/TraceInfo;
    iput-wide p1, v0, Landroid/os/TraceInfo;->endTimeMicro:J

    .line 47
    return-object v0
.end method

.method blacklist endMethodAsync(Ljava/lang/String;IIJ)Landroid/os/TraceInfo;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "cookie"    # I
    .param p3, "endTid"    # I
    .param p4, "endTimeMicro"    # J

    .line 72
    iget-object v0, p0, Landroid/os/TraceStack;->mAsyncTraceMap:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TraceInfo;

    .line 73
    .local v0, "info":Landroid/os/TraceInfo;
    if-nez v0, :cond_1

    .line 74
    sget-boolean v1, Landroid/os/TraceStack;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The trace with id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not exist!!! #beginMethodAsync() may have not been calledfor this method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "TraceStack"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 82
    :cond_1
    iput-wide p4, v0, Landroid/os/TraceInfo;->endTimeMicro:J

    .line 83
    iput p3, v0, Landroid/os/TraceInfo;->endTid:I

    .line 84
    return-object v0
.end method
