.class Lcom/android/internal/os/ProcessCpuTrackerExtImpl$3;
.super Ljava/lang/Object;
.source "ProcessCpuTrackerExtImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->printCpuTrack(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/ProcessCpuTrackerExtImpl;

.field final synthetic blacklist val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/ProcessCpuTrackerExtImpl;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/ProcessCpuTrackerExtImpl;

    .line 323
    iput-object p1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$3;->this$0:Lcom/android/internal/os/ProcessCpuTrackerExtImpl;

    iput-object p2, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$3;->val$pw:Ljava/io/PrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 12

    .line 326
    const-string v0, "ProcessCpuTrackerExtImpl"

    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$3;->this$0:Lcom/android/internal/os/ProcessCpuTrackerExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->-$$Nest$mtryPersistToDisk(Lcom/android/internal/os/ProcessCpuTrackerExtImpl;)V

    .line 327
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$3;->val$pw:Ljava/io/PrintWriter;

    const-string v2, "$CPU TRACK:v2\t uid pid name percent utime stime uptime\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 329
    .local v1, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .line 330
    .local v2, "is":Ljava/io/FileInputStream;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/cputrack.log.old"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/io/File;

    const-string v6, "/data/system/cputrack.log"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 331
    .local v3, "filelist":[Ljava/io/File;
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 332
    .local v4, "buffer":[B
    array-length v6, v3

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v3, v7

    .line 334
    .local v8, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_0

    .line 351
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 352
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 335
    goto :goto_3

    .line 337
    :cond_0
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v9

    .line 338
    const/4 v9, 0x1

    .line 339
    .local v9, "len":I
    :cond_1
    :goto_1
    if-lez v9, :cond_2

    .line 340
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v9, v10

    .line 341
    if-lez v9, :cond_1

    .line 342
    iget-object v10, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$3;->val$pw:Ljava/io/PrintWriter;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v4, v5, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    .end local v9    # "len":I
    nop

    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 352
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 353
    goto :goto_3

    .line 351
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 348
    :catch_0
    move-exception v9

    .line 349
    .local v9, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    nop

    .end local v9    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 346
    :catch_1
    move-exception v9

    .line 347
    .local v9, "e":Ljava/io/FileNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    nop

    .end local v9    # "e":Ljava/io/FileNotFoundException;
    goto :goto_2

    .line 332
    .end local v8    # "file":Ljava/io/File;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 351
    .restart local v8    # "file":Ljava/io/File;
    :goto_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 352
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 353
    throw v0

    .line 355
    .end local v8    # "file":Ljava/io/File;
    :cond_3
    return-void
.end method
