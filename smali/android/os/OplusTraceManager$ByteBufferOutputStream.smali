.class final Landroid/os/OplusTraceManager$ByteBufferOutputStream;
.super Ljava/io/OutputStream;
.source "OplusTraceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusTraceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteBufferOutputStream"
.end annotation


# instance fields
.field private final blacklist mByteBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mOffset:I

.field private blacklist mSingleByte:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOffset(Landroid/os/OplusTraceManager$ByteBufferOutputStream;)I
    .locals 0

    iget p0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mOffset:I

    return p0
.end method

.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 799
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 796
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mOffset:I

    .line 800
    iput-object p1, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 801
    return-void
.end method

.method private blacklist writeBytes([BIII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "destOffset"    # I
    .param p4, "count"    # I

    .line 828
    iget-object v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 829
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    .line 833
    iget-object v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 834
    return-void
.end method

.method public blacklist getCapacity()I
    .locals 1

    .line 804
    iget-object v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public whitelist test-api write(I)V
    .locals 4
    .param p1, "oneByte"    # I

    .line 815
    iget-object v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mSingleByte:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 816
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mSingleByte:[B

    .line 818
    :cond_0
    iget-object v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mSingleByte:[B

    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 819
    invoke-virtual {p0, v0, v3, v1}, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->write([BII)V

    .line 820
    return-void
.end method

.method public blacklist write(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    .line 823
    iget-object v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 824
    iget v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mOffset:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mOffset:I

    .line 825
    return-void
.end method

.method public whitelist test-api write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 809
    iget v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mOffset:I

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->writeBytes([BIII)V

    .line 810
    iget v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/os/OplusTraceManager$ByteBufferOutputStream;->mOffset:I

    .line 811
    return-void
.end method
