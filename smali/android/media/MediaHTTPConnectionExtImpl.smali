.class public Landroid/media/MediaHTTPConnectionExtImpl;
.super Ljava/lang/Object;
.source "MediaHTTPConnectionExtImpl.java"

# interfaces
.implements Landroid/media/IMediaHTTPConnectionExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;
    }
.end annotation


# static fields
.field private static final blacklist MEDIA_ERROR_HTTP_PROTOCOL_ERROR:I = -0x346d5

.field private static final blacklist TAG:Ljava/lang/String; = "MediaHTTPConnectionExtImpl"

.field private static final blacklist THREAD_NAME:Ljava/lang/String; = "MediaHTTPConn"

.field private static final blacklist VERBOSE:Z = false

.field private static final blacklist WAIT_TIMEOUT_MS_OPLUS:I = 0x1f40


# instance fields
.field private blacklist mMediaHTTPConnection:Landroid/media/MediaHTTPConnection;

.field private blacklist mNeedSetTimeout:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMediaHTTPConnection(Landroid/media/MediaHTTPConnectionExtImpl;)Landroid/media/MediaHTTPConnection;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaHTTPConnectionExtImpl;->mMediaHTTPConnection:Landroid/media/MediaHTTPConnection;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "mediaHTTPConnection"    # Ljava/lang/Object;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnectionExtImpl;->mNeedSetTimeout:Z

    .line 62
    move-object v0, p1

    check-cast v0, Landroid/media/MediaHTTPConnection;

    iput-object v0, p0, Landroid/media/MediaHTTPConnectionExtImpl;->mMediaHTTPConnection:Landroid/media/MediaHTTPConnection;

    .line 64
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaHTTPConnectionExtImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getInstance()Lcom/oplus/atlas/OplusAtlasManager;

    move-result-object v1

    .line 69
    const-string v2, "media-http"

    invoke-virtual {v1, v2, v0}, Lcom/oplus/atlas/OplusAtlasManager;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaHTTPConnectionExtImpl;->mNeedSetTimeout:Z

    .line 75
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private declared-synchronized blacklist readAtInternal(J[BIZ)I
    .locals 8
    .param p1, "offset"    # J
    .param p3, "data"    # [B
    .param p4, "size"    # I
    .param p5, "forceSeek"    # Z

    monitor-enter p0

    .line 97
    :try_start_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 98
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 100
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const/16 v1, -0x3f2

    const/4 v2, -0x1

    :try_start_1
    iget-object v3, p0, Landroid/media/MediaHTTPConnectionExtImpl;->mMediaHTTPConnection:Landroid/media/MediaHTTPConnection;
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/UnknownServiceException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/media/MediaHTTPConnection;->getWrapper()Landroid/media/IMediaHTTPConnectionWrapper;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/IMediaHTTPConnectionWrapper;->getCurrentOffset()J

    move-result-wide v3

    .line 107
    .local v3, "lmCurrentOffset":J
    cmp-long v5, p1, v3

    if-nez v5, :cond_0

    if-eqz p5, :cond_1

    .line 108
    :cond_0
    iget-object v5, p0, Landroid/media/MediaHTTPConnectionExtImpl;->mMediaHTTPConnection:Landroid/media/MediaHTTPConnection;

    invoke-virtual {v5}, Landroid/media/MediaHTTPConnection;->getWrapper()Landroid/media/IMediaHTTPConnectionWrapper;

    move-result-object v5

    invoke-interface {v5, p1, p2}, Landroid/media/IMediaHTTPConnectionWrapper;->seekTo(J)V

    .line 111
    :cond_1
    const/16 v5, -0x3e7

    .line 112
    .local v5, "n":I
    iget-object v6, p0, Landroid/media/MediaHTTPConnectionExtImpl;->mMediaHTTPConnection:Landroid/media/MediaHTTPConnection;

    invoke-virtual {v6}, Landroid/media/MediaHTTPConnection;->getWrapper()Landroid/media/IMediaHTTPConnectionWrapper;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IMediaHTTPConnectionWrapper;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 113
    iget-object v6, p0, Landroid/media/MediaHTTPConnectionExtImpl;->mMediaHTTPConnection:Landroid/media/MediaHTTPConnection;

    invoke-virtual {v6}, Landroid/media/MediaHTTPConnection;->getWrapper()Landroid/media/IMediaHTTPConnectionWrapper;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IMediaHTTPConnectionWrapper;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p3, v7, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v5, v6

    .line 116
    .end local p0    # "this":Landroid/media/MediaHTTPConnectionExtImpl;
    :cond_2
    if-ne v5, v2, :cond_3

    .line 119
    const/4 v5, 0x0

    .line 122
    :cond_3
    int-to-long v6, v5

    add-long/2addr v3, v6

    .line 123
    iget-object v6, p0, Landroid/media/MediaHTTPConnectionExtImpl;->mMediaHTTPConnection:Landroid/media/MediaHTTPConnection;

    invoke-virtual {v6}, Landroid/media/MediaHTTPConnection;->getWrapper()Landroid/media/IMediaHTTPConnectionWrapper;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Landroid/media/IMediaHTTPConnectionWrapper;->setCurrentOffset(J)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/NoRouteToHostException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/UnknownServiceException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    monitor-exit p0

    return v5

    .line 140
    .end local v3    # "lmCurrentOffset":J
    .end local v5    # "n":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 137
    :catch_1
    move-exception v2

    goto :goto_1

    .line 145
    :catch_2
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    monitor-exit p0

    return v2

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/media/MediaHTTPConnectionExtImpl;
    :catch_3
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    monitor-exit p0

    return v2

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 138
    .local v2, "e":Ljava/net/UnknownServiceException;
    :goto_1
    :try_start_3
    const-string v3, "MediaHTTPConnectionExtImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    monitor-exit p0

    return v1

    .line 134
    .end local v2    # "e":Ljava/net/UnknownServiceException;
    .end local p0    # "this":Landroid/media/MediaHTTPConnectionExtImpl;
    :catch_5
    move-exception v2

    .line 135
    .local v2, "e":Ljava/net/NoRouteToHostException;
    :try_start_4
    const-string v3, "MediaHTTPConnectionExtImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    monitor-exit p0

    return v1

    .line 131
    .end local v2    # "e":Ljava/net/NoRouteToHostException;
    :catch_6
    move-exception v1

    .line 132
    .local v1, "e":Ljava/net/ProtocolException;
    :try_start_5
    const-string v2, "MediaHTTPConnectionExtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    const v2, -0x346d5

    monitor-exit p0

    return v2

    .line 96
    .end local v0    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v1    # "e":Ljava/net/ProtocolException;
    .end local p1    # "offset":J
    .end local p3    # "data":[B
    .end local p4    # "size":I
    .end local p5    # "forceSeek":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public blacklist asyncSeekTo(J)Z
    .locals 9
    .param p1, "offset"    # J

    .line 155
    const-string v0, "MediaHTTPConnectionExtImpl"

    const-string v1, "asyncSeekTo++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v1, Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;

    const-string v2, "MediaHTTPConn"

    invoke-direct {v1, p0, v2}, Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;-><init>(Landroid/media/MediaHTTPConnectionExtImpl;Ljava/lang/String;)V

    .line 157
    .local v1, "namedThreadFactory":Landroid/media/MediaHTTPConnectionExtImpl$NamedThreadFactory;
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 158
    .local v2, "exec":Ljava/util/concurrent/ExecutorService;
    const/4 v3, 0x0

    .line 159
    .local v3, "ret":Z
    new-instance v4, Landroid/media/MediaHTTPConnectionExtImpl$1;

    invoke-direct {v4, p0, p1, p2}, Landroid/media/MediaHTTPConnectionExtImpl$1;-><init>(Landroid/media/MediaHTTPConnectionExtImpl;J)V

    .line 169
    .local v4, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    .line 170
    .local v5, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    const-wide/16 v6, 0x1f40

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move v3, v6

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asyncSeekTo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    nop

    .end local v5    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 174
    :catch_0
    move-exception v5

    .line 175
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 173
    .local v5, "ex":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .line 176
    .end local v5    # "ex":Ljava/util/concurrent/TimeoutException;
    nop

    .line 178
    :goto_0
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "asyncSeekTo-- return ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v3
.end method

.method public blacklist isNeedSetTimeout()Z
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNeedSetTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/MediaHTTPConnectionExtImpl;->mNeedSetTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaHTTPConnectionExtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-boolean v0, p0, Landroid/media/MediaHTTPConnectionExtImpl;->mNeedSetTimeout:Z

    return v0
.end method

.method public declared-synchronized blacklist readAt(J[BI)I
    .locals 10
    .param p1, "offset"    # J
    .param p3, "data"    # [B
    .param p4, "size"    # I

    monitor-enter p0

    .line 84
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaHTTPConnectionExtImpl;->readAtInternal(J[BIZ)I

    move-result v0

    .line 85
    .local v0, "ret":I
    const v1, -0x346d5

    if-ne v0, v1, :cond_0

    .line 86
    const-string v2, "MediaHTTPConnectionExtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => protocol error, retry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v9, 0x1

    move-object v4, p0

    move-wide v5, p1

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/media/MediaHTTPConnectionExtImpl;->readAtInternal(J[BIZ)I

    move-result v2

    move v0, v2

    .line 89
    .end local p0    # "this":Landroid/media/MediaHTTPConnectionExtImpl;
    :cond_0
    if-ne v0, v1, :cond_1

    .line 90
    const-string v1, "MediaHTTPConnectionExtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => error, convert error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    const/16 v0, -0x3f2

    .line 93
    :cond_1
    monitor-exit p0

    return v0

    .line 83
    .end local v0    # "ret":I
    .end local p1    # "offset":J
    .end local p3    # "data":[B
    .end local p4    # "size":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
