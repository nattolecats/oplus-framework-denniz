.class Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;
.super Ljava/lang/Object;
.source "OwmHttpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmHttpMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpPacketHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;
    }
.end annotation


# instance fields
.field private blacklist mHwAddr:[B

.field private blacklist mIface:Landroid/net/wifi/oplus/util/OplusInterfaceParams;

.field private blacklist mPacketSock:Ljava/io/FileDescriptor;

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmHttpMonitor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPacketSock(Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;)Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/owm/OwmHttpMonitor;)V
    .locals 0

    .line 246
    iput-object p1, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    return-void
.end method

.method private blacklist closeFd(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 286
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    goto :goto_1

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist destroySocket()V
    .locals 1

    .line 281
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->closeFd(Ljava/io/FileDescriptor;)V

    .line 282
    return-void
.end method

.method public blacklist initSocket()V
    .locals 4

    .line 250
    const-string v0, "OwmHttpMonitor"

    iget-object v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    .line 251
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    const-string v1, "initSocket has done, not need init again"

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmHttpMonitor;Ljava/lang/String;)V

    .line 252
    return-void

    .line 256
    :cond_0
    :try_start_0
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_TCP:I

    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    .line 257
    iget-object v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmOwmBaseUtils(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/oplus/util/OplusInterfaceParams;->getByName(Ljava/lang/String;)Landroid/net/wifi/oplus/util/OplusInterfaceParams;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mIface:Landroid/net/wifi/oplus/util/OplusInterfaceParams;

    .line 259
    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    :try_start_1
    invoke-static {v1}, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->attachWlan0HttpFilter(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    nop

    .line 272
    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mIface:Landroid/net/wifi/oplus/util/OplusInterfaceParams;

    iget-object v1, v1, Landroid/net/wifi/oplus/util/OplusInterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v1}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mHwAddr:[B

    .line 273
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;-><init>(Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread-IA;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 277
    goto :goto_1

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSocket catch SocketException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v2, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-direct {p0, v2}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->closeFd(Ljava/io/FileDescriptor;)V

    .line 269
    return-void

    .line 260
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    const-string v2, "initSocket fail!"

    invoke-static {v1, v2}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmHttpMonitor;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 261
    return-void

    .line 274
    :catch_1
    move-exception v1

    .line 275
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSocketcatch exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->closeFd(Ljava/io/FileDescriptor;)V

    .line 278
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
