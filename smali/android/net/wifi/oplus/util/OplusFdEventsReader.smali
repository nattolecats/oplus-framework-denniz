.class public abstract Landroid/net/wifi/oplus/util/OplusFdEventsReader;
.super Ljava/lang/Object;
.source "OplusFdEventsReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BufferType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist FD_EVENTS:I = 0x5

.field private static final blacklist UNREGISTER_THIS_FD:I


# instance fields
.field private final blacklist mBuffer:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBufferType;"
        }
    .end annotation
.end field

.field private blacklist mFd:Ljava/io/FileDescriptor;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mPacketsReceived:J

.field private final blacklist mQueue:Landroid/os/MessageQueue;


# direct methods
.method protected constructor whitelist <init>(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TBufferType;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    .local p2, "buffer":Ljava/lang/Object;, "TBufferType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mHandler:Landroid/os/Handler;

    .line 108
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mQueue:Landroid/os/MessageQueue;

    .line 109
    iput-object p2, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mBuffer:Ljava/lang/Object;

    .line 110
    return-void
.end method

.method protected static whitelist closeFd(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 101
    :try_start_0
    invoke-static {p0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    :goto_0
    return-void
.end method

.method private blacklist createAndRegisterFd()Z
    .locals 5

    .line 198
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mFd:Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 201
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->createFd()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mFd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to create socket: "

    invoke-virtual {p0, v2, v0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 204
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->closeFd(Ljava/io/FileDescriptor;)V

    .line 205
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mFd:Ljava/io/FileDescriptor;

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 210
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mFd:Ljava/io/FileDescriptor;

    const/4 v3, 0x5

    new-instance v4, Landroid/net/wifi/oplus/util/OplusFdEventsReader$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/oplus/util/OplusFdEventsReader;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 223
    invoke-virtual {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->onStart()V

    .line 224
    return v1
.end method

.method private blacklist handleInput()Z
    .locals 7

    .line 233
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    const-string v0, "readPacket error: "

    :goto_0
    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 237
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mFd:Ljava/io/FileDescriptor;

    iget-object v3, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mBuffer:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->readPacket(Ljava/io/FileDescriptor;Ljava/lang/Object;)I

    move-result v2

    .line 238
    .local v2, "bytesRead":I
    if-ge v2, v1, :cond_1

    .line 239
    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Socket closed, exiting"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 240
    :cond_0
    goto :goto_2

    .line 242
    :cond_1
    iget-wide v3, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mPacketsReceived:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mPacketsReceived:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    nop

    .line 259
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mBuffer:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->handlePacket(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    goto :goto_1

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "handlePacket error: "

    invoke-virtual {p0, v3, v1}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 262
    const-class v3, Landroid/net/wifi/oplus/util/OplusFdEventsReader;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error handling packet"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "bytesRead":I
    :goto_1
    goto :goto_0

    .line 253
    :catch_1
    move-exception v1

    .line 254
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 255
    :cond_2
    goto :goto_2

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 244
    .local v2, "e":Landroid/system/ErrnoException;
    iget v3, v2, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EAGAIN:I

    if-ne v3, v4, :cond_3

    .line 246
    return v1

    .line 247
    :cond_3
    iget v1, v2, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EINTR:I

    if-ne v1, v3, :cond_4

    .line 248
    goto :goto_0

    .line 250
    :cond_4
    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 266
    .end local v2    # "e":Landroid/system/ErrnoException;
    :cond_5
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isRunning()Z
    .locals 1

    .line 228
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist onCorrectThread()Z
    .locals 2

    .line 279
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist unregisterAndDestroyFd()V
    .locals 2

    .line 270
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->getMessageQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 273
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->closeFd(Ljava/io/FileDescriptor;)V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mFd:Ljava/io/FileDescriptor;

    .line 275
    invoke-virtual {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->onStop()V

    .line 276
    return-void
.end method


# virtual methods
.method protected abstract whitelist createFd()Ljava/io/FileDescriptor;
.end method

.method public whitelist getHandler()Landroid/os/Handler;
    .locals 1

    .line 137
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected whitelist getMessageQueue()Landroid/os/MessageQueue;
    .locals 1

    .line 114
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method protected whitelist handlePacket(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBufferType;I)V"
        }
    .end annotation

    .line 180
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    .local p1, "recvbuf":Ljava/lang/Object;, "TBufferType;"
    return-void
.end method

.method synthetic blacklist lambda$createAndRegisterFd$0$android-net-wifi-oplus-util-OplusFdEventsReader(Ljava/io/FileDescriptor;I)I
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 217
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->handleInput()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    const/4 v0, 0x5

    return v0

    .line 218
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->unregisterAndDestroyFd()V

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 185
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    return-void
.end method

.method public final whitelist numPacketsReceived()J
    .locals 2

    .line 153
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    iget-wide v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mPacketsReceived:J

    return-wide v0
.end method

.method protected whitelist onStart()V
    .locals 0

    .line 190
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    return-void
.end method

.method protected whitelist onStop()V
    .locals 0

    .line 195
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    return-void
.end method

.method protected abstract whitelist readPacket(Ljava/io/FileDescriptor;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "TBufferType;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public whitelist recvBufSize()I
    .locals 1

    .line 144
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->mBuffer:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->recvBufSize(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract whitelist recvBufSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBufferType;)I"
        }
    .end annotation
.end method

.method public whitelist start()Z
    .locals 2

    .line 119
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->onCorrectThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->createAndRegisterFd()Z

    move-result v0

    return v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "start() called from off-thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stop()V
    .locals 2

    .line 128
    .local p0, "this":Landroid/net/wifi/oplus/util/OplusFdEventsReader;, "Landroid/net/wifi/oplus/util/OplusFdEventsReader<TBufferType;>;"
    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->onCorrectThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Landroid/net/wifi/oplus/util/OplusFdEventsReader;->unregisterAndDestroyFd()V

    .line 133
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stop() called from off-thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
