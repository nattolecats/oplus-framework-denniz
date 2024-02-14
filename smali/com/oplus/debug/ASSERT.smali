.class public Lcom/oplus/debug/ASSERT;
.super Ljava/lang/Object;
.source "ASSERT.java"


# static fields
.field private static final blacklist ASSERT_STATE:Ljava/lang/String; = "persist.sys.assert.state"

.field private static final blacklist IS_GZIPPED:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "DEBUGLOG.ASSERT"

.field private static blacklist mFunctionProxy:Landroid/os/OplusAssertTip;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/debug/ASSERT;->mFunctionProxy:Landroid/os/OplusAssertTip;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static blacklist copyAnrToAssert(Ljava/lang/String;I)V
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "pid"    # I

    .line 226
    if-eqz p0, :cond_1

    .line 227
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss-SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "sAnrFileDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "formattedDate":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "traces_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "tracesName":Ljava/lang/String;
    const-string v3, "persist.sys.assert.panic"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    const-string v3, "persist.sys.assert.panic.camera"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    :cond_0
    const-string v3, "sys.anr.srcfile"

    invoke-static {v3, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v3, "sys.anr.destfile"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v3, "ctl.start"

    const-string v4, "tranfer_anr"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/oplus/debug/ASSERT;->copyBinderInfo()V

    .line 239
    .end local v0    # "sAnrFileDateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "formattedDate":Ljava/lang/String;
    .end local v2    # "tracesName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static blacklist copyAssert(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 11
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFileString"    # Ljava/lang/String;

    .line 191
    const-string v0, "persist.sys.assert.panic"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 192
    const-string v0, "persist.sys.assert.panic.camera"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    return v3

    .line 193
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 194
    .local v0, "dt":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "df":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "now":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    const-string v4, "sys.oplus.logkit.assertlog"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "DestPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v5, "destFile":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "copyAssert destFile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUGLOG.ASSERT"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 202
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 204
    :cond_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v8, 0x1000

    :try_start_1
    new-array v8, v8, [B

    .line 209
    .local v8, "buffer":[B
    :goto_1
    invoke-virtual {p0, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v10, v9

    .local v10, "bytesRead":I
    if-ltz v9, :cond_3

    .line 210
    invoke-virtual {v7, v8, v6, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 211
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 214
    .end local v8    # "buffer":[B
    .end local v10    # "bytesRead":I
    :cond_3
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 215
    nop

    .line 216
    return v3

    .line 214
    :catchall_0
    move-exception v3

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 215
    nop

    .end local v0    # "dt":Ljava/util/Date;
    .end local v1    # "df":Ljava/text/DateFormat;
    .end local v2    # "now":Ljava/lang/String;
    .end local v4    # "DestPath":Ljava/lang/String;
    .end local v5    # "destFile":Ljava/io/File;
    .end local p0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "destFileString":Ljava/lang/String;
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v0    # "dt":Ljava/util/Date;
    .restart local v1    # "df":Ljava/text/DateFormat;
    .restart local v2    # "now":Ljava/lang/String;
    .restart local v4    # "DestPath":Ljava/lang/String;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "destFileString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 218
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    return v6
.end method

.method public static blacklist copyBinderInfo()V
    .locals 2

    .line 257
    const-string v0, "ctl.start"

    const-string v1, "copybinderinfo"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public static blacklist copyTombstoneToAssert(Ljava/lang/String;)V
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 183
    const-string v0, "persist.sys.assert.panic"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const-string v0, "persist.sys.assert.panic.camera"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    const-string v0, "sys.tombstone.file"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "ctl.start"

    const-string v1, "tranfer_tomb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_1
    return-void
.end method

.method public static blacklist epitaph(Ljava/io/File;Ljava/lang/String;ILandroid/content/Context;)Z
    .locals 24
    .param p0, "temp"    # Ljava/io/File;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "c"    # Landroid/content/Context;

    .line 57
    move-object/from16 v1, p0

    const-string v2, "true"

    const-string v3, "false"

    const-string v4, "finally close isForCopyAssert failed."

    const-string v5, "finally close br failed."

    const-string v6, "finally close is failed."

    const-string v7, "DEBUGLOG.ASSERT"

    const/4 v8, 0x0

    if-nez v1, :cond_0

    .line 58
    return v8

    .line 62
    :cond_0
    const/4 v9, 0x0

    .line 63
    .local v9, "isTempForTrim":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 64
    .local v10, "brTempForTrim":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 65
    .local v11, "process":Ljava/lang/String;
    const/4 v12, 0x0

    .line 66
    .local v12, "packageName":Ljava/lang/String;
    const-string v13, "NONE"

    .line 67
    .local v13, "PID":Ljava/lang/String;
    const/4 v14, 0x0

    .line 68
    .local v14, "maxSize":I
    const/4 v15, 0x0

    .line 71
    .local v15, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v0, "persist.sys.thridpart.debug"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 72
    .local v16, "prop":Ljava/lang/String;
    move-object/from16 v8, v16

    .end local v16    # "prop":Ljava/lang/String;
    .local v8, "prop":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-eqz v0, :cond_1

    .line 73
    const/16 v0, 0x1000

    move v14, v0

    .end local v14    # "maxSize":I
    .local v0, "maxSize":I
    goto :goto_0

    .line 75
    .end local v0    # "maxSize":I
    .restart local v14    # "maxSize":I
    :cond_1
    const/16 v0, 0x400

    .end local v14    # "maxSize":I
    .restart local v0    # "maxSize":I
    move v14, v0

    .line 77
    .end local v0    # "maxSize":I
    .restart local v14    # "maxSize":I
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v15, v0

    .line 79
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object v9, v0

    .line 80
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    .line 81
    :try_start_2
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_15
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    move-object v9, v0

    .line 83
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/BufferedReader;

    move-object/from16 v16, v8

    .end local v8    # "prop":Ljava/lang/String;
    .restart local v16    # "prop":Ljava/lang/String;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_14
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-object v10, v0

    .line 85
    const/4 v0, 0x0

    move v8, v0

    .line 87
    .local v8, "count":I
    :goto_1
    move-object/from16 v18, v11

    .end local v11    # "process":Ljava/lang/String;
    .local v18, "process":Ljava/lang/String;
    const-string v11, "epitaph failed."

    const/16 v19, 0x1

    if-ge v8, v14, :cond_9

    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    .local v20, "line":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 88
    const-string v0, "-----"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v21, v12

    move-object/from16 v12, v20

    move-object/from16 v20, v13

    const/4 v13, 0x0

    .end local v13    # "PID":Ljava/lang/String;
    .local v12, "line":Ljava/lang/String;
    .local v20, "PID":Ljava/lang/String;
    .local v21, "packageName":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    move/from16 v22, v14

    goto/16 :goto_5

    .line 91
    :cond_3
    const-string v0, "Process: "

    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const-string v13, ":"

    if-eqz v0, :cond_4

    .line 92
    :try_start_6
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v18, v0

    .end local v18    # "process":Ljava/lang/String;
    .local v0, "process":Ljava/lang/String;
    goto :goto_2

    .line 122
    .end local v0    # "process":Ljava/lang/String;
    .end local v8    # "count":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v16    # "prop":Ljava/lang/String;
    .restart local v18    # "process":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v2, p3

    move-object v1, v0

    move-object/from16 v11, v18

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    goto/16 :goto_1b

    .line 118
    :catch_0
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v11, v18

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    goto/16 :goto_16

    .line 110
    .restart local v8    # "count":I
    .restart local v16    # "prop":Ljava/lang/String;
    :catch_1
    move-exception v0

    move/from16 v22, v14

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    goto/16 :goto_4

    .line 94
    .restart local v12    # "line":Ljava/lang/String;
    :cond_4
    :goto_2
    :try_start_7
    const-string v0, "PID: "
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v22, v14

    const/4 v14, 0x0

    .end local v14    # "maxSize":I
    .local v22, "maxSize":I
    :try_start_8
    invoke-virtual {v12, v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 95
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    .line 97
    :cond_5
    const-string v0, "Package: "

    const/4 v14, 0x0

    invoke-virtual {v12, v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "start":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 100
    .local v13, "end":I
    if-lez v13, :cond_6

    .line 101
    const/4 v14, 0x0

    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .end local v21    # "packageName":Ljava/lang/String;
    .local v14, "packageName":Ljava/lang/String;
    goto :goto_3

    .line 103
    .end local v14    # "packageName":Ljava/lang/String;
    .restart local v21    # "packageName":Ljava/lang/String;
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v0

    .end local v0    # "start":Ljava/lang/String;
    .local v23, "start":Ljava/lang/String;
    const-string v0, "pacakge line = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 106
    .end local v13    # "end":I
    .end local v23    # "start":Ljava/lang/String;
    :cond_7
    move-object/from16 v14, v21

    .end local v21    # "packageName":Ljava/lang/String;
    .restart local v14    # "packageName":Ljava/lang/String;
    :goto_3
    :try_start_9
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v0, "\r\n"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/2addr v8, v0

    move-object v12, v14

    move-object/from16 v11, v18

    move-object/from16 v13, v20

    move/from16 v14, v22

    goto/16 :goto_1

    .line 122
    .end local v8    # "count":I
    .end local v12    # "line":Ljava/lang/String;
    .end local v16    # "prop":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v2, p3

    move-object v1, v0

    move-object v12, v14

    move-object/from16 v11, v18

    move-object/from16 v13, v20

    move/from16 v14, v22

    goto/16 :goto_1b

    .line 118
    :catch_2
    move-exception v0

    move-object/from16 v2, p3

    move-object v12, v14

    move-object/from16 v11, v18

    move-object/from16 v13, v20

    move/from16 v14, v22

    goto/16 :goto_16

    .line 110
    .restart local v8    # "count":I
    .restart local v16    # "prop":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object v12, v14

    move-object/from16 v13, v20

    goto/16 :goto_4

    .line 122
    .end local v8    # "count":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v16    # "prop":Ljava/lang/String;
    .restart local v21    # "packageName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v2, p3

    move-object v1, v0

    move-object/from16 v11, v18

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    move/from16 v14, v22

    goto/16 :goto_1b

    .line 118
    :catch_4
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v11, v18

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    move/from16 v14, v22

    goto/16 :goto_16

    .line 110
    .restart local v8    # "count":I
    .restart local v16    # "prop":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    goto :goto_4

    .line 122
    .end local v8    # "count":I
    .end local v16    # "prop":Ljava/lang/String;
    .end local v22    # "maxSize":I
    .local v14, "maxSize":I
    :catchall_3
    move-exception v0

    move/from16 v22, v14

    move-object/from16 v2, p3

    move-object v1, v0

    move-object/from16 v11, v18

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    .end local v14    # "maxSize":I
    .restart local v22    # "maxSize":I
    goto/16 :goto_1b

    .line 118
    .end local v22    # "maxSize":I
    .restart local v14    # "maxSize":I
    :catch_6
    move-exception v0

    move/from16 v22, v14

    move-object/from16 v2, p3

    move-object/from16 v11, v18

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    .end local v14    # "maxSize":I
    .restart local v22    # "maxSize":I
    goto/16 :goto_16

    .line 110
    .end local v22    # "maxSize":I
    .restart local v8    # "count":I
    .restart local v14    # "maxSize":I
    .restart local v16    # "prop":Ljava/lang/String;
    :catch_7
    move-exception v0

    move/from16 v22, v14

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    .end local v14    # "maxSize":I
    .restart local v22    # "maxSize":I
    goto :goto_4

    .line 87
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "maxSize":I
    .local v12, "packageName":Ljava/lang/String;
    .local v13, "PID":Ljava/lang/String;
    .restart local v14    # "maxSize":I
    .local v20, "line":Ljava/lang/String;
    :cond_8
    move-object/from16 v21, v12

    move/from16 v22, v14

    move-object/from16 v12, v20

    move-object/from16 v20, v13

    .end local v13    # "PID":Ljava/lang/String;
    .end local v14    # "maxSize":I
    .local v12, "line":Ljava/lang/String;
    .local v20, "PID":Ljava/lang/String;
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v22    # "maxSize":I
    goto :goto_5

    .line 122
    .end local v8    # "count":I
    .end local v16    # "prop":Ljava/lang/String;
    .end local v20    # "PID":Ljava/lang/String;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "maxSize":I
    .local v12, "packageName":Ljava/lang/String;
    .restart local v13    # "PID":Ljava/lang/String;
    .restart local v14    # "maxSize":I
    :catchall_4
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v20, v13

    move/from16 v22, v14

    move-object/from16 v2, p3

    move-object v1, v0

    move-object/from16 v11, v18

    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "PID":Ljava/lang/String;
    .end local v14    # "maxSize":I
    .restart local v20    # "PID":Ljava/lang/String;
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v22    # "maxSize":I
    goto/16 :goto_1b

    .line 118
    .end local v20    # "PID":Ljava/lang/String;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "maxSize":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "PID":Ljava/lang/String;
    .restart local v14    # "maxSize":I
    :catch_8
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v20, v13

    move/from16 v22, v14

    move-object/from16 v2, p3

    move-object/from16 v11, v18

    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "PID":Ljava/lang/String;
    .end local v14    # "maxSize":I
    .restart local v20    # "PID":Ljava/lang/String;
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v22    # "maxSize":I
    goto/16 :goto_16

    .line 110
    .end local v20    # "PID":Ljava/lang/String;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "maxSize":I
    .restart local v8    # "count":I
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "PID":Ljava/lang/String;
    .restart local v14    # "maxSize":I
    .restart local v16    # "prop":Ljava/lang/String;
    :catch_9
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v20, v13

    move/from16 v22, v14

    .line 111
    .end local v14    # "maxSize":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v22    # "maxSize":I
    :goto_4
    :try_start_a
    invoke-static {v7, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "count":I
    .end local v16    # "prop":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v2, p3

    move-object v1, v0

    move-object/from16 v11, v18

    move/from16 v14, v22

    goto/16 :goto_1b

    .line 118
    :catch_a
    move-exception v0

    move-object/from16 v2, p3

    move-object/from16 v11, v18

    move/from16 v14, v22

    goto/16 :goto_16

    .line 87
    .end local v22    # "maxSize":I
    .restart local v8    # "count":I
    .restart local v14    # "maxSize":I
    .restart local v16    # "prop":Ljava/lang/String;
    :cond_9
    move-object/from16 v21, v12

    move-object/from16 v20, v13

    move/from16 v22, v14

    .line 112
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "PID":Ljava/lang/String;
    .end local v14    # "maxSize":I
    .restart local v20    # "PID":Ljava/lang/String;
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v22    # "maxSize":I
    :goto_5
    move-object/from16 v13, v20

    move-object/from16 v12, v21

    .line 114
    .end local v20    # "PID":Ljava/lang/String;
    .end local v21    # "packageName":Ljava/lang/String;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v13    # "PID":Ljava/lang/String;
    :goto_6
    if-nez v8, :cond_a

    .line 116
    nop

    .line 123
    nop

    .line 124
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 128
    goto :goto_7

    .line 126
    :catch_b
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 127
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    nop

    .line 131
    :try_start_c
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 135
    goto :goto_8

    .line 133
    :catch_c
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 134
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    const/4 v2, 0x0

    return v2

    .line 123
    .end local v8    # "count":I
    .end local v16    # "prop":Ljava/lang/String;
    :cond_a
    nop

    .line 124
    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 128
    goto :goto_9

    .line 126
    :catch_d
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 127
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    nop

    .line 131
    :try_start_e
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 135
    goto :goto_a

    .line 133
    :catch_e
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 134
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 138
    :goto_a
    if-nez v18, :cond_b

    .line 139
    const-string v18, "NONE"

    move-object/from16 v5, v18

    goto :goto_b

    .line 138
    :cond_b
    move-object/from16 v5, v18

    .line 141
    .end local v18    # "process":Ljava/lang/String;
    .local v5, "process":Ljava/lang/String;
    :goto_b
    invoke-static {}, Landroid/os/OplusAssertTip;->getInstance()Landroid/os/OplusAssertTip;

    move-result-object v0

    sput-object v0, Lcom/oplus/debug/ASSERT;->mFunctionProxy:Landroid/os/OplusAssertTip;

    .line 142
    const/4 v6, 0x0

    .line 143
    .local v6, "isForCopyAssert":Ljava/io/InputStream;
    const/4 v8, -0x1

    .line 145
    .local v8, "showResult":I
    :try_start_f
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v6, v0

    .line 146
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_c

    .line 147
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v0

    .line 150
    :cond_c
    const/16 v0, 0x3a

    const/16 v14, 0x5f

    invoke-virtual {v5, v0, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "withoutColonProcessName":Ljava/lang/String;
    move-object v5, v0

    .line 152
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "withoutColonProcessName":Ljava/lang/String;
    .local v16, "withoutColonProcessName":Ljava/lang/String;
    const-string v0, "after replace \':\' with \'_\' ,the ProcessName is "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "-"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/oplus/debug/ASSERT;->copyAssert(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 154
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 155
    const/4 v6, 0x0

    .line 157
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "content":Ljava/lang/String;
    const-string v14, "persist.sys.assert.state"

    invoke-static {v14, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 159
    const-string v2, "assert state is close"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-object/from16 v2, p3

    goto :goto_c

    .line 161
    :cond_d
    move-object/from16 v2, p3

    :try_start_10
    invoke-static {v2, v12}, Lcom/oplus/debug/ASSERT;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "appName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 163
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v1, "\n"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 165
    :cond_e
    sget-object v1, Lcom/oplus/debug/ASSERT;->mFunctionProxy:Landroid/os/OplusAssertTip;

    invoke-virtual {v1, v0}, Landroid/os/OplusAssertTip;->requestShowAssertMessage(Ljava/lang/String;)I

    move-result v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    move v8, v1

    .line 171
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "appName":Ljava/lang/String;
    .end local v16    # "withoutColonProcessName":Ljava/lang/String;
    :goto_c
    if-eqz v6, :cond_f

    .line 173
    :try_start_11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    .line 176
    :goto_d
    goto :goto_e

    .line 174
    :catch_f
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_d

    .line 179
    :cond_f
    :goto_e
    const/4 v0, -0x1

    if-eq v0, v8, :cond_10

    move/from16 v17, v19

    goto :goto_f

    :cond_10
    const/16 v17, 0x0

    :goto_f
    return v17

    .line 167
    :catch_10
    move-exception v0

    goto :goto_11

    .line 171
    :catchall_6
    move-exception v0

    move-object/from16 v2, p3

    :goto_10
    move-object v1, v0

    goto :goto_13

    .line 167
    :catch_11
    move-exception v0

    move-object/from16 v2, p3

    :goto_11
    move-object v1, v0

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    :try_start_12
    invoke-static {v7, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 169
    nop

    .line 171
    if-eqz v6, :cond_11

    .line 173
    :try_start_13
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12

    .line 176
    goto :goto_12

    .line 174
    :catch_12
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 175
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_11
    :goto_12
    const/4 v3, 0x0

    return v3

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_7
    move-exception v0

    goto :goto_10

    :goto_13
    if-eqz v6, :cond_12

    .line 173
    :try_start_14
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_13

    .line 176
    goto :goto_14

    .line 174
    :catch_13
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 175
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_14
    throw v1

    .line 122
    .end local v5    # "process":Ljava/lang/String;
    .end local v6    # "isForCopyAssert":Ljava/io/InputStream;
    .end local v8    # "showResult":I
    .end local v22    # "maxSize":I
    .restart local v11    # "process":Ljava/lang/String;
    .restart local v14    # "maxSize":I
    :catchall_8
    move-exception v0

    move-object/from16 v2, p3

    move/from16 v22, v14

    move-object v1, v0

    .end local v14    # "maxSize":I
    .restart local v22    # "maxSize":I
    goto :goto_1b

    .line 118
    .end local v22    # "maxSize":I
    .restart local v14    # "maxSize":I
    :catch_14
    move-exception v0

    move-object/from16 v2, p3

    move/from16 v22, v14

    .end local v14    # "maxSize":I
    .restart local v22    # "maxSize":I
    goto :goto_16

    .line 122
    .end local v22    # "maxSize":I
    .restart local v14    # "maxSize":I
    :catchall_9
    move-exception v0

    move-object/from16 v2, p3

    :goto_15
    move-object v1, v0

    goto :goto_1b

    .line 118
    :catch_15
    move-exception v0

    move-object/from16 v2, p3

    :goto_16
    move-object v1, v0

    .line 119
    .local v1, "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 120
    nop

    .line 123
    if-eqz v9, :cond_13

    .line 124
    :try_start_16
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_17

    .line 126
    :catch_16
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 127
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    :goto_17
    nop

    .line 130
    :goto_18
    if-eqz v10, :cond_14

    .line 131
    :try_start_17
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_19

    .line 133
    :catch_17
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 134
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_14
    :goto_19
    nop

    .line 120
    :goto_1a
    const/4 v3, 0x0

    return v3

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_a
    move-exception v0

    goto :goto_15

    .line 123
    :goto_1b
    if-eqz v9, :cond_15

    .line 124
    :try_start_18
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_1c

    .line 126
    :catch_18
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 127
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_1c
    nop

    .line 130
    :goto_1d
    if-eqz v10, :cond_16

    .line 131
    :try_start_19
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_1e

    .line 133
    :catch_19
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 134
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_16
    :goto_1e
    nop

    .line 136
    :goto_1f
    throw v1
.end method

.method private static blacklist getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    const-string v1, "DEBUGLOG.ASSERT"

    if-nez p1, :cond_0

    .line 243
    const-string v2, "The package name is null, cann\'t get the app label"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-object v0

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 248
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 249
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 250
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 251
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppName failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v3    # "e":Ljava/lang/Exception;
    return-object v0
.end method
