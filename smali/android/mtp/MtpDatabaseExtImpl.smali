.class public Landroid/mtp/MtpDatabaseExtImpl;
.super Ljava/lang/Object;
.source "MtpDatabaseExtImpl.java"

# interfaces
.implements Landroid/mtp/IMtpDatabaseExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;,
        Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist EXIT_MESSAGE:I = 0x2

.field public static final blacklist HANDLE_MESSAGE:I = 0x1

.field public static final blacklist INIT_MESSAGE:I = 0x0

.field private static final blacklist NO_MEDIA:Ljava/lang/String; = ".nomedia"

.field private static final blacklist TAG:Ljava/lang/String; = "MtpDatabaseExtImpl"

.field private static blacklist sInstance:Landroid/mtp/MtpDatabaseExtImpl;


# instance fields
.field protected blacklist mHandler:Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;

.field protected blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist sContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Landroid/mtp/MtpDatabaseExtImpl;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smupdateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/mtp/MtpDatabaseExtImpl;->updateMediaStore(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 49
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/mtp/MtpDatabaseExtImpl;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl;->sContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Landroid/mtp/MtpDatabaseExtImpl;->initHandlerThread()V

    .line 57
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/mtp/MtpDatabaseExtImpl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    sget-object v0, Landroid/mtp/MtpDatabaseExtImpl;->sInstance:Landroid/mtp/MtpDatabaseExtImpl;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/mtp/MtpDatabaseExtImpl;

    invoke-direct {v0, p0}, Landroid/mtp/MtpDatabaseExtImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/mtp/MtpDatabaseExtImpl;->sInstance:Landroid/mtp/MtpDatabaseExtImpl;

    .line 69
    :cond_0
    sget-object v0, Landroid/mtp/MtpDatabaseExtImpl;->sInstance:Landroid/mtp/MtpDatabaseExtImpl;

    return-object v0
.end method

.method private blacklist initHandlerThread()V
    .locals 3

    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MtpDatabaseExtImpl"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 61
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v0, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;

    iget-object v1, p0, Landroid/mtp/MtpDatabaseExtImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MtpDatabaseExtImpl;->sContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;-><init>(Landroid/mtp/MtpDatabaseExtImpl;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl;->mHandler:Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;

    .line 63
    return-void
.end method

.method private blacklist sendMessage(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl;->mHandler:Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 105
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;

    invoke-direct {v1, p0, p1}, Landroid/mtp/MtpDatabaseExtImpl$HandlerParams;-><init>(Landroid/mtp/MtpDatabaseExtImpl;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Landroid/mtp/MtpDatabaseExtImpl;->mHandler:Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method private static blacklist updateMediaStore(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 226
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {v0, p1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    .line 231
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist getMtpDeviceProperty(II[C)Z
    .locals 3
    .param p1, "length"    # I
    .param p2, "property"    # I
    .param p3, "outStringValue"    # [C

    .line 209
    if-lez p1, :cond_0

    .line 210
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/mtp/MtpDatabaseExtImpl;->getOplusMarketName(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0, p1, p2}, Landroid/mtp/MtpDatabaseExtImpl;->getOplusMarketName(II)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "deviceName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 215
    .local v2, "lengthDeviceName":I
    invoke-virtual {v0, v1, v2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 216
    aput-char v1, p3, v2

    .line 218
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v2    # "lengthDeviceName":I
    :cond_1
    return v1
.end method

.method public blacklist getOplusMarketName(II)Ljava/lang/String;
    .locals 6
    .param p1, "length"    # I
    .param p2, "property"    # I

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceProperty  length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtpDatabaseExtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    const v2, 0xd402

    if-ne p2, v2, :cond_2

    .line 184
    const-string v2, "ro.vendor.oplus.market.name"

    const-string v3, "OPLUS MTP Device"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "deviceName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 186
    .local v3, "lengthDeviceName":I
    const/16 v4, 0xff

    if-le v3, v4, :cond_0

    .line 187
    const/16 v3, 0xff

    .line 189
    :cond_0
    if-lez v3, :cond_1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceProperty  deviceName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", lengthDeviceName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-object v2

    .line 193
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceProperty  lengthDeviceName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-object v0

    .line 197
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v3    # "lengthDeviceName":I
    :cond_2
    return-object v0
.end method

.method public whitelist quitSafely()V
    .locals 1

    .line 202
    iget-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 205
    :cond_0
    return-void
.end method

.method public whitelist releaseScanThread()V
    .locals 2

    .line 176
    iget-object v0, p0, Landroid/mtp/MtpDatabaseExtImpl;->mHandler:Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/mtp/MtpDatabaseExtImpl$ScanHandler;->sendEmptyMessage(I)Z

    .line 177
    return-void
.end method

.method public whitelist rescanFile(Ljava/lang/String;II)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I

    .line 86
    const-string v0, "MtpDatabaseExtImpl"

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabaseExtImpl;->sendMessage(Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v1, "msg":Z
    if-eqz v1, :cond_0

    .line 88
    return-void

    .line 92
    .end local v1    # "msg":Z
    :cond_0
    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescanFile failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "rescanFile retry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :try_start_1
    invoke-direct {p0}, Landroid/mtp/MtpDatabaseExtImpl;->initHandlerThread()V

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabaseExtImpl;->sendMessage(Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    goto :goto_1

    .line 97
    :catch_1
    move-exception v1

    .line 98
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescanFile retry failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
