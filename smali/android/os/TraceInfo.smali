.class public Landroid/os/TraceInfo;
.super Ljava/lang/Object;
.source "TraceInfo.java"


# static fields
.field private static final blacklist ASYNC_TASK_ALLOCATE_SIZE:I = 0x19

.field private static final blacklist EOF:C = '\n'

.field private static final blacklist MAX_CONTENT_LEN:I = 0x10000

.field private static final blacklist SYNC_TASK_ALLOCATE_SIZE:I = 0x14

.field private static final blacklist UNDEFINED_ID:I = -0x1


# instance fields
.field public blacklist content:Ljava/lang/String;

.field public blacklist contentId:I

.field public blacklist cookie:I

.field public blacklist endTid:I

.field public blacklist endTimeMicro:J

.field public blacklist isAsync:Z

.field public blacklist level:I

.field private final blacklist mRawContent:[B

.field public blacklist pid:I

.field public blacklist startTimeMicro:J

.field public blacklist tid:I


# direct methods
.method public constructor blacklist <init>(JILjava/lang/String;Z)V
    .locals 3
    .param p1, "startTimeStamp"    # J
    .param p3, "tid"    # I
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "isAsync"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p4, p0, Landroid/os/TraceInfo;->content:Ljava/lang/String;

    .line 38
    iput-wide p1, p0, Landroid/os/TraceInfo;->startTimeMicro:J

    .line 39
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/os/TraceInfo;->pid:I

    .line 40
    iput p3, p0, Landroid/os/TraceInfo;->tid:I

    .line 41
    iput-boolean p5, p0, Landroid/os/TraceInfo;->isAsync:Z

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/TraceInfo;->contentId:I

    .line 45
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 46
    .local v0, "rawContent":[B
    array-length v1, v0

    const/high16 v2, 0x10000

    if-le v1, v2, :cond_0

    .line 47
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/os/TraceInfo;->mRawContent:[B

    .line 48
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "cookie"    # I

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/TraceInfo;-><init>(JILjava/lang/String;Z)V

    .line 33
    iput p2, p0, Landroid/os/TraceInfo;->cookie:I

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist getDuration()J
    .locals 4

    .line 51
    iget-wide v0, p0, Landroid/os/TraceInfo;->endTimeMicro:J

    iget-wide v2, p0, Landroid/os/TraceInfo;->startTimeMicro:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getSize()I
    .locals 3

    .line 82
    iget-boolean v0, p0, Landroid/os/TraceInfo;->isAsync:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 83
    .local v0, "fixedLength":I
    :goto_0
    iget v1, p0, Landroid/os/TraceInfo;->contentId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/os/TraceInfo;->mRawContent:[B

    array-length v1, v1

    .line 85
    .local v1, "contentSize":I
    :goto_1
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x10

    return v2
.end method

.method public blacklist writeTo(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 57
    iget-boolean v0, p0, Landroid/os/TraceInfo;->isAsync:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/TraceInfo;->startTimeMicro:J

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/os/TraceInfo;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/os/TraceInfo;->pid:I

    int-to-short v1, v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/os/TraceInfo;->tid:I

    int-to-short v1, v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 63
    iget-boolean v0, p0, Landroid/os/TraceInfo;->isAsync:Z

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Landroid/os/TraceInfo;->endTid:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/os/TraceInfo;->cookie:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 66
    :cond_0
    iget v0, p0, Landroid/os/TraceInfo;->level:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 69
    :goto_0
    iget v0, p0, Landroid/os/TraceInfo;->contentId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Landroid/os/TraceInfo;->contentId:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 72
    :cond_1
    iget-object v0, p0, Landroid/os/TraceInfo;->mRawContent:[B

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/os/TraceInfo;->mRawContent:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 75
    :goto_1
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 76
    return-void
.end method
