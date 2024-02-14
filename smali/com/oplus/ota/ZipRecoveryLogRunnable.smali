.class public Lcom/oplus/ota/ZipRecoveryLogRunnable;
.super Ljava/lang/Object;
.source "ZipRecoveryLogRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final blacklist OPLUS_REGION_MARK:Ljava/lang/String; = "ro.vendor.oplus.regionmark"

.field private static final blacklist OTA_VERSION:Ljava/lang/String; = "ro.build.version.ota"

.field private static final blacklist RECOVERY_LOG_DCS_DIR:Ljava/lang/String; = "/data/persist_log/DCS/de/recovery_log"

.field private static final blacklist REGION_CN:Ljava/lang/String; = "CN"

.field private static final blacklist TAG:Ljava/lang/String; = "ZipRecoveryLogRunnable"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist ZipFiles(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    .locals 7
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "zipOutputSteam"    # Ljava/util/zip/ZipOutputStream;

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "inputStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    const-string v2, "ZipRecoveryLogRunnable"

    if-nez p2, :cond_1

    .line 88
    :try_start_0
    const-string v3, "zipOutputSteam = null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    nop

    .line 123
    if-eqz v0, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 128
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 89
    :goto_1
    return v1

    .line 91
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start zipfiles : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    .line 96
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 98
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 99
    .local v3, "buffer":[B
    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 100
    invoke-virtual {p2, v3, v1, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 103
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v3    # "buffer":[B
    .end local v5    # "len":I
    goto :goto_6

    .line 104
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 105
    .local v3, "fileList":[Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZipFiles fileList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    array-length v4, v3

    if-gtz v4, :cond_4

    .line 107
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p2, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 109
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 111
    .end local v4    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_7

    .line 112
    aget-object v5, v3, v4

    invoke-direct {p0, v5, p2}, Lcom/oplus/ota/ZipRecoveryLogRunnable;->ZipFiles(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 113
    const-string v5, "ZipFiles error ,return"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    nop

    .line 123
    if-eqz v0, :cond_5

    .line 124
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 126
    :catch_1
    move-exception v2

    .line 127
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 128
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :goto_4
    nop

    .line 114
    :goto_5
    return v1

    .line 111
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 123
    .end local v3    # "fileList":[Ljava/io/File;
    .end local v4    # "i":I
    :cond_7
    :goto_6
    if-eqz v0, :cond_8

    .line 124
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    .line 126
    :catch_2
    move-exception v1

    .line 127
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 128
    :cond_8
    :goto_7
    nop

    .line 130
    :goto_8
    const/4 v1, 0x1

    return v1

    .line 122
    :catchall_0
    move-exception v1

    goto :goto_b

    .line 118
    :catch_3
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 120
    nop

    .line 123
    if-eqz v0, :cond_9

    .line 124
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    .line 126
    :catch_4
    move-exception v3

    .line 127
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 128
    .end local v3    # "e":Ljava/io/IOException;
    :cond_9
    :goto_9
    nop

    .line 120
    :goto_a
    return v1

    .line 123
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_b
    if-eqz v0, :cond_a

    .line 124
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_c

    .line 126
    :catch_5
    move-exception v2

    .line 127
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 128
    .end local v2    # "e":Ljava/io/IOException;
    :cond_a
    :goto_c
    nop

    .line 129
    :goto_d
    throw v1
.end method

.method private blacklist ZipFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "zipFileString"    # Ljava/lang/String;

    .line 58
    const-string v0, "@"

    const/4 v1, 0x0

    .line 60
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 62
    .local v2, "outZip":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ro.build.version.ota"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/ota/ZipRecoveryLogRunnable;->getSystemCurrentTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".zip"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 63
    .local v0, "zipFile":Ljava/io/File;
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 65
    invoke-direct {p0, p1, v2}, Lcom/oplus/ota/ZipRecoveryLogRunnable;->ZipFiles(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z

    move-result v3

    move v1, v3

    .line 66
    invoke-direct {p0, v0}, Lcom/oplus/ota/ZipRecoveryLogRunnable;->chmod(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v0    # "zipFile":Ljava/io/File;
    nop

    .line 74
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 75
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :cond_0
    :goto_0
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 71
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 67
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    const/4 v1, 0x0

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    .line 74
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 75
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 81
    :goto_1
    return v1

    .line 72
    :goto_2
    if-eqz v2, :cond_1

    .line 74
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 75
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 77
    :catch_2
    move-exception v3

    .line 78
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 79
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 80
    :goto_4
    throw v0
.end method

.method private varargs blacklist changePermission(Ljava/lang/String;[Ljava/nio/file/attribute/PosixFilePermission;)Z
    .locals 8
    .param p1, "pathStr"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/nio/file/attribute/PosixFilePermission;

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ZipRecoveryLogRunnable"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "dir is empty!"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v2

    .line 158
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v2

    .line 165
    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 166
    .local v3, "permissionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 168
    .local v4, "path":Ljava/nio/file/Path;
    array-length v5, p2

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, p2, v6

    .line 169
    .local v7, "permission":Ljava/nio/file/attribute/PosixFilePermission;
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    nop

    .end local v7    # "permission":Ljava/nio/file/attribute/PosixFilePermission;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 171
    :cond_2
    invoke-static {v4, v3}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "change permission success :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    const/4 v1, 0x1

    return v1

    .line 174
    .end local v3    # "permissionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .end local v4    # "path":Ljava/nio/file/Path;
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "change permission failed !"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    return v2
.end method

.method private blacklist chmod(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 134
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    .line 146
    .local v0, "permissions777":[Ljava/nio/file/attribute/PosixFilePermission;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not exists"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ZipRecoveryLogRunnable"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v2

    .line 150
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/oplus/ota/ZipRecoveryLogRunnable;->changePermission(Ljava/lang/String;[Ljava/nio/file/attribute/PosixFilePermission;)Z

    move-result v1

    return v1
.end method

.method private blacklist delete(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "ZipRecoveryLogRunnable"

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v2, " delete failed"

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 189
    .local v0, "re":Z
    if-nez v0, :cond_1

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    return-void

    .line 194
    .end local v0    # "re":Z
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 196
    .local v0, "childFiles":[Ljava/io/File;
    if-eqz v0, :cond_5

    array-length v3, v0

    if-nez v3, :cond_3

    goto :goto_1

    .line 203
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 204
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/oplus/ota/ZipRecoveryLogRunnable;->delete(Ljava/io/File;)V

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 207
    .local v3, "re":Z
    if-nez v3, :cond_7

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 197
    .end local v3    # "re":Z
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 198
    .restart local v3    # "re":Z
    if-nez v3, :cond_6

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_6
    return-void

    .line 211
    .end local v0    # "childFiles":[Ljava/io/File;
    .end local v3    # "re":Z
    :cond_7
    :goto_2
    return-void
.end method

.method private blacklist getSystemCurrentTime()Ljava/lang/String;
    .locals 3

    .line 214
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist isSupportUploadLog()Z
    .locals 2

    .line 219
    const-string v0, "ro.vendor.oplus.regionmark"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "region":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v1, 0x1

    return v1

    .line 223
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 33
    invoke-direct {p0}, Lcom/oplus/ota/ZipRecoveryLogRunnable;->isSupportUploadLog()Z

    move-result v0

    const-string v1, "ZipRecoveryLogRunnable"

    if-nez v0, :cond_0

    .line 34
    const-string v0, "Upload recovery log not supported!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/persist_log/DCS/de/recovery_log"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "dcsLogPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recovery_log create failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void

    .line 46
    :cond_1
    invoke-direct {p0, v0}, Lcom/oplus/ota/ZipRecoveryLogRunnable;->chmod(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 47
    invoke-direct {p0, v0}, Lcom/oplus/ota/ZipRecoveryLogRunnable;->delete(Ljava/io/File;)V

    .line 49
    :cond_2
    const-string v2, "recovery_log create success"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v2, Ljava/io/File;

    const-string v3, "/cache/recovery"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, "cacheFile":Ljava/io/File;
    const-string v3, "/data/persist_log/DCS/de/recovery_log/recoveryLog@"

    invoke-direct {p0, v2, v3}, Lcom/oplus/ota/ZipRecoveryLogRunnable;->ZipFolder(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 52
    const-string v3, "ZipFolder error,delete log"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0, v0}, Lcom/oplus/ota/ZipRecoveryLogRunnable;->delete(Ljava/io/File;)V

    .line 55
    :cond_3
    return-void
.end method
