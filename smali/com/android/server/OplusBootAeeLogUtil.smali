.class public Lcom/android/server/OplusBootAeeLogUtil;
.super Ljava/lang/Object;
.source "OplusBootAeeLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OplusBootAeeLogUtil$MTKDBExceptionId;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OppoBootReceiver_OppoBootAeeLogUtil"

.field private static final blacklist mLastExceptionProperty:Ljava/lang/String; = "persist.hungtask.oppo.kill"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkMtkHwtState(Landroid/content/Context;)I
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .line 72
    const/4 v0, -0x1

    .line 73
    .local v0, "type":I
    invoke-static {}, Lcom/android/server/OplusBootAeeLogUtil;->isMtkPlatform()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    return v0

    .line 77
    :cond_0
    const/4 v1, 0x0

    const-string v2, "vendor.debug.mtk.aeev.db"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "bootAeeDB":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aee db path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OppoBootReceiver_OppoBootAeeLogUtil"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v2, ""

    .line 81
    .local v2, "issue":Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v4, "HWT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "HANG"

    const-string v7, "HW_Reboot"

    if-nez v5, :cond_1

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 82
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    const/16 v0, 0x78

    .line 84
    const-string v2, "HWT"

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    const/16 v0, 0x79

    .line 87
    const-string v2, "Hardware Reboot"

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 89
    const/16 v0, 0x7a

    .line 90
    const-string v2, "HANG"

    .line 93
    :cond_4
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aee db type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", issue is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 95
    nop

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc040106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    const-string v4, "HWT_HardwareReboot_HANG"

    const-string v5, "ANDROID"

    invoke-static {v0, v4, v5, v2, v3}, Landroid/os/OplusManager;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_5
    return v0
.end method

.method private static blacklist copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "sourceFile"    # Ljava/lang/String;
    .param p1, "destinationFile"    # Ljava/lang/String;

    .line 270
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 272
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v3, 0x400

    new-array v3, v3, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    .local v3, "buffer":[B
    const/4 v4, -0x1

    .line 276
    .local v4, "byteRead":I
    :goto_0
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v4, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 277
    invoke-virtual {v2, v3, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :cond_0
    nop

    .line 284
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 286
    nop

    .line 287
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 288
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 294
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v3    # "buffer":[B
    .end local v4    # "byteRead":I
    nop

    .line 295
    const/4 v0, 0x1

    return v0

    .line 283
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v4    # "byteRead":I
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 279
    :catch_0
    move-exception v5

    .line 280
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    nop

    .line 283
    nop

    .line 284
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 286
    nop

    .line 287
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 288
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 281
    return v0

    .line 284
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 286
    nop

    .line 287
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 288
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 290
    nop

    .end local p0    # "sourceFile":Ljava/lang/String;
    .end local p1    # "destinationFile":Ljava/lang/String;
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 291
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v3    # "buffer":[B
    .end local v4    # "byteRead":I
    .restart local p0    # "sourceFile":Ljava/lang/String;
    .restart local p1    # "destinationFile":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 292
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    return v0
.end method

.method private static blacklist copyFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "sourcePath"    # Ljava/lang/String;
    .param p1, "destinationPath"    # Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "destinationFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "OppoBootReceiver_OppoBootAeeLogUtil"

    if-nez v2, :cond_0

    .line 224
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    const-string v2, "copyFolder: cannot create destination directory."

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v0

    .line 229
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v2, "sourceFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "files":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 232
    .local v5, "sourceFile":Ljava/io/File;
    array-length v6, v4

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_8

    aget-object v8, v4, v7

    .line 233
    .local v8, "file":Ljava/lang/String;
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 234
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v9

    goto :goto_1

    .line 236
    :cond_1
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v9

    .line 239
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "/"

    if-eqz v9, :cond_2

    .line 240
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/OplusBootAeeLogUtil;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 241
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 242
    const-string v6, "copyFolder:  sourceFile not exist."

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return v0

    .line 244
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_4

    .line 245
    const-string v6, "copyFolder:  sourceFile not file."

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return v0

    .line 247
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_5

    .line 248
    const-string v6, "copyFolder:  sourceFile cannot read."

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return v0

    .line 250
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, ".nomedia"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 251
    const-string v9, "donot copy nomedia"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 253
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, "sourceFilePath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 256
    .local v10, "destinationFilePath":Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/OplusBootAeeLogUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v11, :cond_7

    .line 257
    return v0

    .line 232
    .end local v8    # "file":Ljava/lang/String;
    .end local v9    # "sourceFilePath":Ljava/lang/String;
    .end local v10    # "destinationFilePath":Ljava/lang/String;
    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 261
    :cond_8
    const/4 v0, 0x1

    return v0

    .line 262
    .end local v1    # "destinationFolder":Ljava/io/File;
    .end local v2    # "sourceFolder":Ljava/io/File;
    .end local v4    # "files":[Ljava/lang/String;
    .end local v5    # "sourceFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    return v0
.end method

.method private static blacklist deleteDir(Ljava/io/File;)V
    .locals 4
    .param p0, "dir"    # Ljava/io/File;

    .line 523
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    return-void

    .line 526
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 527
    .local v0, "fileList":[Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 528
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 529
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/OplusBootAeeLogUtil;->deleteDir(Ljava/io/File;)V

    .line 528
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    :cond_1
    invoke-static {p0}, Lcom/android/server/OplusBootAeeLogUtil;->deleteFile(Ljava/io/File;)V

    goto :goto_1

    .line 533
    :cond_2
    invoke-static {p0}, Lcom/android/server/OplusBootAeeLogUtil;->deleteFile(Ljava/io/File;)V

    .line 535
    :goto_1
    return-void
.end method

.method private static blacklist deleteFile(Ljava/io/File;)V
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .line 538
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v1, "file: "

    const-string v2, "OppoBootReceiver_OppoBootAeeLogUtil"

    if-eqz v0, :cond_0

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delete succeed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delete failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_0
    return-void
.end method

.method private static blacklist generateSystemCrashLog(Ljava/lang/String;)V
    .locals 4
    .param p0, "unknownCrashReason"    # Ljava/lang/String;

    .line 546
    const-string v0, "OppoBootReceiver_OppoBootAeeLogUtil"

    const-string v1, "system_server unknown reboot call"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :try_start_0
    const-string v1, "ro.vendor.have_aee_feature"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 550
    :try_start_1
    sget-object v1, Lcom/android/server/OplusMirrorMtkExceptionLogHelper;->generateSystemCrashLog:Lcom/oplus/reflect/RefMethod;

    if-eqz v1, :cond_0

    .line 551
    sget-object v1, Lcom/android/server/OplusMirrorMtkExceptionLogHelper;->generateSystemCrashLog:Lcom/oplus/reflect/RefMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lcom/oplus/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 553
    :cond_0
    const-string v1, "generateSystemCrashLog failed for method empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 557
    :goto_0
    goto :goto_1

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "generateSystemCrashLog failed!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 561
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    goto :goto_2

    .line 559
    :catch_1
    move-exception v1

    .line 560
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateSystemCrashLog :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v1, "system_server unknown reboot call end"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void
.end method

.method public static blacklist gzipFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "source_filepath"    # Ljava/lang/String;
    .param p1, "destinaton_zip_filepath"    # Ljava/lang/String;

    .line 501
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 503
    .local v0, "buffer":[B
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 505
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 507
    .local v2, "gzipOuputStream":Ljava/util/zip/GZIPOutputStream;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 509
    .local v3, "fileInput":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "bytes_read":I
    if-lez v4, :cond_0

    .line 510
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 513
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 514
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 515
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 516
    const-string v4, "OppoBootReceiver_OppoBootAeeLogUtil"

    const-string v6, "The file was compressed successfully!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    nop

    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v2    # "gzipOuputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "fileInput":Ljava/io/FileInputStream;
    .end local v5    # "bytes_read":I
    goto :goto_1

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 520
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private static blacklist isLastSystemServerRebootFormBolckException()Ljava/lang/String;
    .locals 2

    .line 59
    invoke-static {}, Landroid/os/ProjectManager;->getHungtask()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "strSend":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    return-object v0

    .line 64
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist isMtkPlatform()Z
    .locals 2

    .line 68
    const-string v0, "ro.board.platform"

    const-string v1, "oppo"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist moveVendorAeeToData(Ljava/lang/String;)Z
    .locals 3
    .param p0, "aeePath"    # Ljava/lang/String;

    .line 451
    invoke-static {}, Landroid/os/OplusUsageManager;->getOplusUsageManager()Landroid/os/OplusUsageManager;

    move-result-object v0

    .line 452
    .local v0, "usageManager":Landroid/os/OplusUsageManager;
    if-nez v0, :cond_0

    .line 453
    const-string v1, "OppoBootReceiver_OppoBootAeeLogUtil"

    const-string v2, "moveVendorAeeToData can not find usageManager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v1, 0x0

    return v1

    .line 456
    :cond_0
    const-string v1, "/data/vendor/aee_exp"

    const-string v2, "/data/persist_log/aee_exp"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "dataAeePath":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/OplusUsageManager;->readEntireOplusDir(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private static blacklist packageAeeLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "aeeType"    # Ljava/lang/String;
    .param p1, "aeePath"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;

    .line 182
    const-string v0, "/data/persist_log/DCS/de/AEE_DB/aee.zip"

    .line 183
    .local v0, "tempGzFile":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/persist_log/DCS/de/AEE_DB/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    const-string v3, "ro.build.version.ota"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat.gz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "aeeGzFile":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare zip! aeeType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aeePath is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OppoBootReceiver_OppoBootAeeLogUtil"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/server/OplusBootAeeLogUtil;->zipFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v0, v1}, Lcom/android/server/OplusBootAeeLogUtil;->gzipFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 193
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package end, delete file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OplusBootAeeLogUtil;->deleteDir(Ljava/io/File;)V

    .line 198
    :cond_0
    const-string v2, "sys.backup.minidump.tag"

    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "ctl.start"

    const-string v4, "backup_minidumplog"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 200
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "dumpEnvironmentGzFile failed!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static blacklist packageAeeLogsForOLC(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "aeeType"    # Ljava/lang/String;
    .param p1, "aeePath"    # Ljava/lang/String;
    .param p2, "aeeOLCExceptionId"    # I

    .line 207
    const-string v0, "/data/persist_log/DCS/de/AEE_DB/aeeForOLC"

    .line 210
    .local v0, "tempOLCDir":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/server/OplusBootAeeLogUtil;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const-string v1, "sys.backup.minidump.tag"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {p2}, Lcom/android/server/OplusBootAeeLogUtil;->raiseAeeExceptionToOLC(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    goto :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OppoBootReceiver_OppoBootAeeLogUtil"

    const-string v3, "dumpEnvironmentGzFile failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static blacklist parseAeeLogPath(Z)Ljava/lang/String;
    .locals 8
    .param p0, "isAndroidReboot"    # Z

    .line 425
    if-eqz p0, :cond_0

    const-string v0, "vendor.debug.mtk.aee.db"

    goto :goto_0

    :cond_0
    const-string v0, "vendor.debug.mtk.aeev.db"

    .line 426
    .local v0, "aeePropName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "aeeDBProp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 431
    .local v2, "aeePath":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "OppoBootReceiver_OppoBootAeeLogUtil"

    if-eqz v1, :cond_4

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 435
    :cond_1
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parserAeeLogPath aeeDBProp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not null but inavailable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-object v3

    .line 439
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 440
    if-nez p0, :cond_3

    .line 443
    invoke-static {v2}, Lcom/android/server/OplusBootAeeLogUtil;->moveVendorAeeToData(Ljava/lang/String;)Z

    .line 444
    const-string v3, "/data/vendor/aee_exp"

    const-string v4, "/data/persist_log/aee_exp"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    :cond_3
    return-object v2

    .line 432
    :cond_4
    :goto_1
    const-string v5, " parserAeeLogPath aeeDBProp is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-object v3
.end method

.method private static blacklist parseAeeOLCExceptionId(ZLjava/lang/String;)I
    .locals 5
    .param p0, "isAndroidReboot"    # Z
    .param p1, "aeePath"    # Ljava/lang/String;

    .line 328
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 329
    return v0

    .line 331
    :cond_0
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 332
    .local v1, "lastIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 333
    return v0

    .line 335
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "endStr":Ljava/lang/String;
    const-string v2, "NE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    const v2, 0x1001e001

    return v2

    .line 339
    :cond_2
    const-string v2, "JE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x1001e002

    if-eqz v2, :cond_3

    .line 340
    return v3

    .line 342
    :cond_3
    const-string v2, "SWT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 343
    const v2, 0x1001e003

    return v2

    .line 345
    :cond_4
    const-string v2, "KE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v4, 0x1001e011

    if-eqz v2, :cond_5

    .line 346
    return v4

    .line 348
    :cond_5
    const-string v2, "HWT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 349
    const v2, 0x1001e012

    return v2

    .line 351
    :cond_6
    const-string v2, "Hardware Reboot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 352
    const v2, 0x1001e013

    return v2

    .line 354
    :cond_7
    const-string v2, "HANG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 355
    const v2, 0x1001e014

    return v2

    .line 359
    :cond_8
    if-eqz p0, :cond_9

    .line 360
    return v3

    .line 362
    :cond_9
    return v4
.end method

.method private static blacklist parseAeeTag(ZLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "isAndroidReboot"    # Z
    .param p1, "aeePath"    # Ljava/lang/String;

    .line 395
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 396
    return-object v0

    .line 398
    :cond_0
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 399
    .local v1, "lastIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 400
    return-object v0

    .line 402
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "endStr":Ljava/lang/String;
    const-string v2, "NE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 404
    const-string v2, "AEE_SYSTEM_TOMBSTONE_CRASH"

    return-object v2

    .line 406
    :cond_2
    const-string v2, "JE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "AEE_SYSTEM_SERVER"

    if-eqz v2, :cond_3

    .line 407
    return-object v3

    .line 409
    :cond_3
    const-string v2, "SWT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 410
    const-string v2, "AEE_SYSTEM_SERVER_WATCHDOG"

    return-object v2

    .line 412
    :cond_4
    const-string v2, "KE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "AEE_SYSTEM_LAST_KMSG"

    if-nez v2, :cond_7

    const-string v2, "HWT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "Hardware Reboot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "HANG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 417
    :cond_5
    if-eqz p0, :cond_6

    .line 418
    return-object v3

    .line 420
    :cond_6
    return-object v4

    .line 413
    :cond_7
    :goto_0
    return-object v4
.end method

.method public static blacklist prepareMtkLog(ZLjava/lang/String;)V
    .locals 13
    .param p0, "isAndroidReboot"    # Z
    .param p1, "headers"    # Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/android/server/OplusBootAeeLogUtil;->isMtkPlatform()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "java_uuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/OplusBootAeeLogUtil;->parseAeeLogPath(Z)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "aeePath":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/server/OplusBootAeeLogUtil;->parseAeeTag(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "aeeType":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/server/OplusBootAeeLogUtil;->parseAeeOLCExceptionId(ZLjava/lang/String;)I

    move-result v4

    .line 114
    .local v4, "aeeOLCExceptionId":I
    const-string v5, "sys.olc.service.on"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 115
    .local v2, "olcServiceIsWorking":Z
    const-string v5, "OppoBootReceiver_OppoBootAeeLogUtil"

    if-eqz p0, :cond_7

    .line 116
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 117
    .local v6, "system_server_current_pid":I
    const/4 v7, -0x1

    const-string v8, "persist.sys.systemserver.pid"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 118
    .local v7, "system_server_previous_pid":I
    if-ne v6, v7, :cond_1

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "may not crash, system_server_current_pid == system_server_previous_pid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android restart maybe crash or killed, system_server_current_pid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " system_server_previous_pid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    if-eqz v1, :cond_3

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/ZZ_INTERNAL"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 126
    const-string v5, "sys.mtk.last.aee.db"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-eqz v2, :cond_2

    .line 128
    invoke-static {v3, v1, v4}, Lcom/android/server/OplusBootAeeLogUtil;->packageAeeLogsForOLC(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 130
    :cond_2
    invoke-static {v3, v1, v0}, Lcom/android/server/OplusBootAeeLogUtil;->packageAeeLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 134
    :cond_3
    invoke-static {}, Lcom/android/server/OplusBootAeeLogUtil;->isLastSystemServerRebootFormBolckException()Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "lastSystemReboot":Ljava/lang/String;
    const/4 v9, 0x0

    .line 136
    .local v9, "unknownCrashReason":Ljava/lang/String;
    const-string v10, ", system_server_previous_pid = "

    if-eqz v8, :cond_4

    .line 137
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "system_Server reboot from Block Exception! system_server_current_pid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", lastSystemReboot = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 142
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "system_Server crash but can not get efficacious log! system_server_current_pid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 146
    :goto_1
    invoke-static {v9}, Lcom/android/server/OplusBootAeeLogUtil;->generateSystemCrashLog(Ljava/lang/String;)V

    .line 149
    const-string v10, "vendor.debug.mtk.aee.status"

    const-string v11, "free"

    const/16 v12, 0x3c

    invoke-static {v10, v11, v11, v12}, Lcom/android/server/OplusBootAeeLogUtil;->waitForStringPropertyReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    const-string v10, "vendor.debug.mtk.aee.status64"

    invoke-static {v10, v11, v11, v12}, Lcom/android/server/OplusBootAeeLogUtil;->waitForStringPropertyReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    invoke-static {p0}, Lcom/android/server/OplusBootAeeLogUtil;->parseAeeLogPath(Z)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {p0, v1}, Lcom/android/server/OplusBootAeeLogUtil;->parseAeeTag(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-static {p0, v1}, Lcom/android/server/OplusBootAeeLogUtil;->parseAeeOLCExceptionId(ZLjava/lang/String;)I

    move-result v4

    .line 155
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 156
    if-eqz v2, :cond_5

    .line 157
    invoke-static {v3, v1, v4}, Lcom/android/server/OplusBootAeeLogUtil;->packageAeeLogsForOLC(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 159
    :cond_5
    invoke-static {v3, v1, v0}, Lcom/android/server/OplusBootAeeLogUtil;->packageAeeLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 162
    :cond_6
    const-string v10, "prepareMtkLog failed for aeePath or aeeType illegal!"

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v6    # "system_server_current_pid":I
    .end local v7    # "system_server_previous_pid":I
    .end local v8    # "lastSystemReboot":Ljava/lang/String;
    .end local v9    # "unknownCrashReason":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 166
    :cond_7
    if-eqz v1, :cond_9

    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    .line 167
    if-eqz v2, :cond_8

    .line 168
    invoke-static {v3, v1, v4}, Lcom/android/server/OplusBootAeeLogUtil;->packageAeeLogsForOLC(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 170
    :cond_8
    invoke-static {v3, v1, v0}, Lcom/android/server/OplusBootAeeLogUtil;->packageAeeLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 173
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareMtkLog is not unnormal reboot. aeePath is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " aeeType is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isAndroidReboot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_3
    return-void
.end method

.method private static blacklist raiseAeeExceptionToOLC(I)V
    .locals 7
    .param p0, "aeeOLCExceptionId"    # I

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "success":I
    const-wide v1, 0x80000000L

    .line 301
    .local v1, "olcLogOptionUpperMTKReboot":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start to handle MTK aee reboot data, exceptionId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OppoBootReceiver_OppoBootAeeLogUtil"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v3, Landroid/os/olc/ExceptionInfo;

    invoke-direct {v3}, Landroid/os/olc/ExceptionInfo;-><init>()V

    .line 303
    .local v3, "info":Landroid/os/olc/ExceptionInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/os/olc/ExceptionInfo;->setTime(J)V

    .line 304
    invoke-virtual {v3, p0}, Landroid/os/olc/ExceptionInfo;->setId(I)V

    .line 305
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/olc/ExceptionInfo;->setExceptionType(I)V

    .line 306
    invoke-virtual {v3, v5}, Landroid/os/olc/ExceptionInfo;->setExceptionLevel(I)V

    .line 307
    invoke-virtual {v3, v1, v2}, Landroid/os/olc/ExceptionInfo;->setAtomicLogs(J)V

    .line 308
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/olc/ExceptionInfo;->setLogParmas(Ljava/lang/String;)V

    .line 309
    invoke-static {v3}, Landroid/os/olc/OlcManager;->raiseException(Landroid/os/olc/ExceptionInfo;)I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 310
    const-string v5, "failed to raise olc Exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    return-void
.end method

.method private static blacklist waitForIntPropertyReady(Ljava/lang/String;III)V
    .locals 5
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "failValue"    # I
    .param p2, "expectValue"    # I
    .param p3, "maxTime"    # I

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitForPropertyReady!int "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoBootReceiver_OppoBootAeeLogUtil"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 369
    mul-int/lit8 v0, p3, 0x2

    .line 370
    .local v0, "loopCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 371
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 372
    goto :goto_1

    .line 374
    :cond_0
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForPropertyReady end!int "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method

.method private static blacklist waitForStringPropertyReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "failValue"    # Ljava/lang/String;
    .param p2, "expectValue"    # Ljava/lang/String;
    .param p3, "maxTime"    # I

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitForPropertyReady!String "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoBootReceiver_OppoBootAeeLogUtil"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 383
    mul-int/lit8 v0, p3, 0x2

    .line 384
    .local v0, "loopCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x28

    if-ge v2, v3, :cond_1

    .line 385
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 386
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    goto :goto_1

    .line 384
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    .end local v2    # "i":I
    :cond_1
    :goto_1
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForPropertyReady end!String "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void
.end method

.method private static blacklist zipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "inputFolderPath"    # Ljava/lang/String;
    .param p1, "outZipPath"    # Ljava/lang/String;

    .line 461
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "srcFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 463
    .local v1, "files":[Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zip directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OppoBootReceiver_OppoBootAeeLogUtil"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v2, 0x0

    .line 467
    .local v2, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 468
    const/16 v4, 0x400

    new-array v5, v4, [B

    .line 470
    .local v5, "buf":[B
    array-length v6, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_3

    aget-object v9, v1, v8

    .line 471
    .local v9, "file":Ljava/io/File;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v10, :cond_0

    .line 472
    goto :goto_3

    .line 474
    :cond_0
    :try_start_1
    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 475
    .local v10, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v11, Ljava/util/zip/ZipEntry;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 476
    .local v11, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 478
    :goto_1
    invoke-virtual {v10, v5, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    move v13, v12

    .local v13, "len":I
    if-lez v12, :cond_1

    .line 479
    invoke-virtual {v2, v5, v7, v13}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 481
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 482
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 483
    .end local v11    # "entry":Ljava/util/zip/ZipEntry;
    .end local v13    # "len":I
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 485
    .end local v10    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 474
    .restart local v10    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v11

    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v12

    :try_start_5
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "srcFile":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    .end local v5    # "buf":[B
    .end local v9    # "file":Ljava/io/File;
    .end local p0    # "inputFolderPath":Ljava/lang/String;
    .end local p1    # "outZipPath":Ljava/lang/String;
    :goto_2
    throw v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 483
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v0    # "srcFile":Ljava/io/File;
    .restart local v1    # "files":[Ljava/io/File;
    .restart local v2    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "buf":[B
    .restart local v9    # "file":Ljava/io/File;
    .restart local p0    # "inputFolderPath":Ljava/lang/String;
    .restart local p1    # "outZipPath":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 484
    .local v10, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 470
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 492
    :cond_3
    nop

    .line 493
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 496
    goto :goto_4

    .line 495
    :catch_1
    move-exception v3

    .line 487
    :goto_4
    return-void

    .line 491
    .end local v5    # "buf":[B
    :catchall_2
    move-exception v3

    goto :goto_7

    .line 488
    :catch_2
    move-exception v4

    .line 489
    .local v4, "e":Ljava/io/IOException;
    :try_start_8
    const-string v5, "error zipping up profile data"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 492
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_4

    .line 493
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    .line 495
    :catch_3
    move-exception v3

    .line 497
    goto :goto_6

    .line 496
    :cond_4
    :goto_5
    nop

    .line 498
    :goto_6
    return-void

    .line 492
    :goto_7
    if-eqz v2, :cond_5

    .line 493
    :try_start_a
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_8

    .line 495
    :catch_4
    move-exception v4

    goto :goto_9

    .line 496
    :cond_5
    :goto_8
    nop

    .line 497
    :goto_9
    throw v3
.end method
