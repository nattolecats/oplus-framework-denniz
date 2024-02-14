.class public Lcn/teddymobile/free/anteater/rule/utils/DetectionFileUtils;
.super Ljava/lang/Object;
.source "DetectionFileUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist loadRestrictions(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .local v2, "fip":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 37
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 38
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 42
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "str":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    .end local v2    # "fip":Ljava/io/FileInputStream;
    nop

    .line 48
    return-object v0

    .line 34
    .restart local v2    # "fip":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "file":Ljava/io/File;
    .end local p0    # "filePath":Ljava/lang/String;
    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 43
    .end local v2    # "fip":Ljava/io/FileInputStream;
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "file":Ljava/io/File;
    .restart local p0    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 45
    return-object v0
.end method

.method public static blacklist logFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .local v1, "fop":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v2

    .line 18
    .local v2, "flag":Z
    if-eqz v2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Create file failed!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fop":Ljava/io/FileOutputStream;
    .end local p0    # "content":Ljava/lang/String;
    .end local p1    # "filePath":Ljava/lang/String;
    throw v3

    .line 23
    .end local v2    # "flag":Z
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fop":Ljava/io/FileOutputStream;
    .restart local p0    # "content":Ljava/lang/String;
    .restart local p1    # "filePath":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 24
    .local v2, "contentInBytes":[B
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 25
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .end local v2    # "contentInBytes":[B
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    .end local v1    # "fop":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 15
    .restart local v1    # "fop":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local p0    # "content":Ljava/lang/String;
    .end local p1    # "filePath":Ljava/lang/String;
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 26
    .end local v1    # "fop":Ljava/io/FileOutputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local p0    # "content":Ljava/lang/String;
    .restart local p1    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 27
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 29
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method
