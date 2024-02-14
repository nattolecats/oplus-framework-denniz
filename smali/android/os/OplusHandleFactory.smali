.class public Landroid/os/OplusHandleFactory;
.super Ljava/lang/Object;
.source "OplusHandleFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OplusHandleFactory$ReadCallback;,
        Landroid/os/OplusHandleFactory$IOCtrlCallback;,
        Landroid/os/OplusHandleFactory$HwServiceDeathCallback;
    }
.end annotation


# static fields
.field private static final blacklist HWSERVICE_COOKIE_HANDLEFACTORY:J = 0x0L

.field private static final blacklist O_RDONLY:I = 0x0

.field private static final blacklist O_RDWR:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "HandleFactory"

.field private static blacklist sIHandleFactory:Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputsIHandleFactory(Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;)V
    .locals 0

    sput-object p0, Landroid/os/OplusHandleFactory;->sIHandleFactory:Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OplusHandleFactory;->sIHandleFactory:Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist exist()Z
    .locals 2

    .line 61
    const-class v0, Landroid/os/OplusHandleFactory;

    monitor-enter v0

    .line 62
    :try_start_0
    invoke-static {}, Landroid/os/OplusHandleFactory;->getService()Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getHandle(Ljava/lang/String;I)I
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "flag"    # I

    .line 188
    const-class v0, Landroid/os/OplusHandleFactory;

    monitor-enter v0

    .line 189
    :try_start_0
    invoke-static {}, Landroid/os/OplusHandleFactory;->getService()Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 191
    :try_start_1
    invoke-static {}, Landroid/os/OplusHandleFactory;->getService()Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;->getHandle(Ljava/lang/String;I)Landroid/os/NativeHandle;

    move-result-object v1

    .line 192
    .local v1, "nhandle":Landroid/os/NativeHandle;
    invoke-virtual {v1}, Landroid/os/NativeHandle;->dup()Landroid/os/NativeHandle;

    move-result-object v3

    .line 193
    .local v3, "cpHandle":Landroid/os/NativeHandle;
    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {v3}, Landroid/os/NativeHandle;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {v3}, Landroid/os/NativeHandle;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_0

    .line 196
    invoke-virtual {v3}, Landroid/os/NativeHandle;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    .line 198
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Landroid/os/NativeHandle;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    :try_start_4
    monitor-exit v0

    return v2

    .line 202
    :cond_1
    monitor-exit v0

    return v2

    .line 207
    .end local v1    # "nhandle":Landroid/os/NativeHandle;
    .end local v3    # "cpHandle":Landroid/os/NativeHandle;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "HandleFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHandle failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    monitor-exit v0

    return v2

    .line 204
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HandleFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHandle failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    monitor-exit v0

    return v2

    .line 212
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    monitor-exit v0

    return v2

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private static blacklist getService()Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;
    .locals 4

    .line 40
    sget-object v0, Landroid/os/OplusHandleFactory;->sIHandleFactory:Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    if-nez v0, :cond_1

    .line 42
    :try_start_0
    invoke-static {}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;->getService()Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    move-result-object v0

    sput-object v0, Landroid/os/OplusHandleFactory;->sIHandleFactory:Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    .line 43
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Landroid/os/OplusHandleFactory$HwServiceDeathCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/OplusHandleFactory$HwServiceDeathCallback;-><init>(Landroid/os/OplusHandleFactory$HwServiceDeathCallback-IA;)V

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get IHandleFactory hal service, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HandleFactory"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/OplusHandleFactory;->sIHandleFactory:Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    return-object v0
.end method

.method public static blacklist ioctrl(Ljava/lang/String;II)[I
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .line 93
    const-class v0, Landroid/os/OplusHandleFactory;

    monitor-enter v0

    .line 94
    :try_start_0
    invoke-static {}, Landroid/os/OplusHandleFactory;->getService()Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 96
    :try_start_1
    new-instance v8, Landroid/os/OplusHandleFactory$IOCtrlCallback;

    invoke-direct {v8}, Landroid/os/OplusHandleFactory$IOCtrlCallback;-><init>()V

    .line 97
    .local v8, "callback":Landroid/os/OplusHandleFactory$IOCtrlCallback;
    invoke-static {}, Landroid/os/OplusHandleFactory;->getService()Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    move-result-object v3

    const/4 v5, 0x2

    move-object v4, p0

    move v6, p1

    move v7, p2

    invoke-interface/range {v3 .. v8}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;->ioctrl(Ljava/lang/String;IIILvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$ioctrlCallback;)V

    .line 98
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-virtual {v8}, Landroid/os/OplusHandleFactory$IOCtrlCallback;->result()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v8}, Landroid/os/OplusHandleFactory$IOCtrlCallback;->param()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "retList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/os/OplusHandleFactory$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/os/OplusHandleFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 100
    .end local v1    # "retList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "callback":Landroid/os/OplusHandleFactory$IOCtrlCallback;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HandleFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ioctrl failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    monitor-exit v0

    return-object v2

    .line 105
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    monitor-exit v0

    return-object v2

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic blacklist lambda$ioctrl$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist read(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .line 160
    const-class v0, Landroid/os/OplusHandleFactory;

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-static {}, Landroid/os/OplusHandleFactory;->getService()Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 163
    :try_start_1
    new-instance v1, Landroid/os/OplusHandleFactory$ReadCallback;

    invoke-direct {v1}, Landroid/os/OplusHandleFactory$ReadCallback;-><init>()V

    .line 164
    .local v1, "cbReadCallback":Landroid/os/OplusHandleFactory$ReadCallback;
    invoke-static {}, Landroid/os/OplusHandleFactory;->getService()Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4, v1}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;->read(Ljava/lang/String;ILvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory$readCallback;)V

    .line 165
    invoke-virtual {v1}, Landroid/os/OplusHandleFactory$ReadCallback;->result()I

    move-result v3

    if-ltz v3, :cond_0

    .line 166
    invoke-virtual {v1}, Landroid/os/OplusHandleFactory$ReadCallback;->data()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 168
    :cond_0
    monitor-exit v0

    return-object v2

    .line 170
    .end local v1    # "cbReadCallback":Landroid/os/OplusHandleFactory$ReadCallback;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HandleFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    monitor-exit v0

    return-object v2

    .line 175
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    monitor-exit v0

    return-object v2

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static blacklist write(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 118
    const-class v0, Landroid/os/OplusHandleFactory;

    monitor-enter v0

    .line 119
    :try_start_0
    invoke-static {}, Landroid/os/OplusHandleFactory;->getService()Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 121
    :try_start_1
    invoke-static {}, Landroid/os/OplusHandleFactory;->getService()Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, p0, v3, p1}, Lvendor/oplus/hardware/handlefactory/V1_0/IHandleFactory;->write(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HandleFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    monitor-exit v0

    return v2

    .line 127
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    monitor-exit v0

    return v2

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
