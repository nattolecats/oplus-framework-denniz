.class public Lcom/oplus/settings/OplusBaseSettings;
.super Ljava/lang/Object;
.source "OplusBaseSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/settings/OplusBaseSettings$AssertFileAutoCloseOutputStream;,
        Lcom/oplus/settings/OplusBaseSettings$ParcelFileAutoCloseOutputStream;,
        Lcom/oplus/settings/OplusBaseSettings$OplusFileOutputStream;
    }
.end annotation


# static fields
.field private static final blacklist BASE_URI:Ljava/lang/String; = "content://OplusSettings"

.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "OplusBaseSettings"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 51
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/settings/OplusBaseSettings;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isSystemProcess()Z
    .locals 1

    .line 203
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    return v0
.end method

.method public static whitelist readConfigAsUser(Landroid/content/Context;Ljava/lang/String;II)Ljava/io/InputStream;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customPath"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/oplus/settings/OplusBaseSettings;->isSystemProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {p3, p2, p1}, Lcom/oplus/settings/OplusSettingsConfig;->getFilePath(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "path":Ljava/lang/String;
    sget-boolean v1, Lcom/oplus/settings/OplusBaseSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readConfigAsUser systemUser path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " customPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBaseSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 64
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    const-string v0, "content://OplusSettings"

    invoke-static {v0, p1, p2, p3}, Lcom/oplus/settings/OplusSettingsConfig;->getUri(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 65
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 66
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist readConfigStringAsUser(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customPath"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const-string v0, "readConfig close br error"

    const-string v1, "readConfig close is error"

    const-string v2, "OplusBaseSettings"

    const/4 v3, 0x0

    .line 112
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 114
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/settings/OplusBaseSettings;->readConfigAsUser(Landroid/content/Context;Ljava/lang/String;II)Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 115
    if-nez v3, :cond_2

    .line 116
    const-string v5, "readConfig error is is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    const/4 v5, 0x0

    .line 128
    if-eqz v3, :cond_0

    .line 129
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v6

    .line 132
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v2, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 133
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 135
    :goto_1
    if-eqz v4, :cond_1

    .line 136
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 138
    :catch_1
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    nop

    .line 117
    :goto_3
    return-object v5

    .line 119
    :cond_2
    :try_start_3
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "lineTxt":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 123
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 125
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    if-eqz v3, :cond_4

    .line 129
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 131
    :catch_2
    move-exception v8

    .line 132
    .local v8, "e":Ljava/io/IOException;
    invoke-static {v2, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 133
    .end local v8    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    nop

    .line 135
    :goto_6
    nop

    .line 136
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 140
    goto :goto_7

    .line 138
    :catch_3
    move-exception v1

    .line 139
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v1    # "e":Ljava/io/IOException;
    :goto_7
    return-object v6

    .line 127
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "lineTxt":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 128
    if-eqz v3, :cond_5

    .line 129
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 131
    :catch_4
    move-exception v6

    .line 132
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v2, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 133
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    :goto_8
    nop

    .line 135
    :goto_9
    if-eqz v4, :cond_6

    .line 136
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_a

    .line 138
    :catch_5
    move-exception v1

    .line 139
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    :goto_a
    nop

    .line 141
    :goto_b
    throw v5
.end method

.method public static blacklist registerChangeListenerAsUser(Landroid/content/Context;Ljava/lang/String;IILcom/oplus/settings/OplusSettingsChangeListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customPath"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "type"    # I
    .param p4, "listener"    # Lcom/oplus/settings/OplusSettingsChangeListener;

    .line 185
    const-string v0, "content://OplusSettings"

    invoke-static {v0, p1, p2, p3}, Lcom/oplus/settings/OplusSettingsConfig;->getUri(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 186
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    return-void
.end method

.method public static blacklist registerChangeListenerForAll(Landroid/content/Context;Ljava/lang/String;ILcom/oplus/settings/OplusSettingsChangeListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customPath"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "listener"    # Lcom/oplus/settings/OplusSettingsChangeListener;

    .line 197
    const-string v0, "content://OplusSettings"

    const/4 v1, -0x2

    invoke-static {v0, p1, v1, p2}, Lcom/oplus/settings/OplusSettingsConfig;->getUri(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 198
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, p3, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 199
    return-void
.end method

.method public static whitelist writeConfigAsUser(Landroid/content/Context;Ljava/lang/String;II)Ljava/io/OutputStream;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customPath"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const-string v0, "content://OplusSettings"

    invoke-static {v0, p1, p2, p3}, Lcom/oplus/settings/OplusSettingsConfig;->getUri(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 75
    .local v0, "uri":Landroid/net/Uri;
    sget-boolean v1, Lcom/oplus/settings/OplusBaseSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeConfigAsUser customPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBaseSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-static {}, Lcom/oplus/settings/OplusBaseSettings;->isSystemProcess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-static {p3, p2, p1}, Lcom/oplus/settings/OplusSettingsConfig;->getFilePath(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 84
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 87
    :cond_2
    new-instance v3, Lcom/oplus/settings/OplusBaseSettings$OplusFileOutputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v1, v4, v0}, Lcom/oplus/settings/OplusBaseSettings$OplusFileOutputStream;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v3

    .line 89
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 90
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v2, "w"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 91
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v2, :cond_4

    .line 92
    return-object v3

    .line 95
    :cond_4
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v3

    .line 96
    .local v3, "len":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_5

    .line 97
    new-instance v5, Lcom/oplus/settings/OplusBaseSettings$ParcelFileAutoCloseOutputStream;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v5, v6, v7, v0}, Lcom/oplus/settings/OplusBaseSettings$ParcelFileAutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v5

    .line 99
    :cond_5
    new-instance v5, Lcom/oplus/settings/OplusBaseSettings$AssertFileAutoCloseOutputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, v2, v6, v0}, Lcom/oplus/settings/OplusBaseSettings$AssertFileAutoCloseOutputStream;-><init>(Landroid/content/res/AssetFileDescriptor;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 100
    .end local v3    # "len":J
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "Unable to create stream"

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static blacklist writeConfigStringAsUser(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customPath"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "type"    # I
    .param p4, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const-string v0, "writeConfig close bw error"

    const-string v1, "writeConfig close os error"

    const-string v2, "OplusBaseSettings"

    const/4 v3, 0x0

    .line 147
    .local v3, "os":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 149
    .local v4, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/settings/OplusBaseSettings;->writeConfigAsUser(Landroid/content/Context;Ljava/lang/String;II)Ljava/io/OutputStream;

    move-result-object v5

    move-object v3, v5

    .line 150
    if-nez v3, :cond_2

    .line 151
    const-string v5, "writeConfig error os is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    const/4 v5, -0x2

    .line 160
    if-eqz v3, :cond_0

    .line 161
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v6

    .line 164
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v2, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 165
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 167
    :goto_1
    if-eqz v4, :cond_1

    .line 168
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 170
    :catch_1
    move-exception v1

    .line 171
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 172
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    nop

    .line 152
    :goto_3
    return v5

    .line 154
    :cond_2
    :try_start_3
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v4, v5

    .line 155
    invoke-virtual {v4, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    const/4 v5, 0x0

    .line 160
    if-eqz v3, :cond_3

    .line 161
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 163
    :catch_2
    move-exception v6

    .line 164
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v2, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 165
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    nop

    .line 167
    :goto_5
    nop

    .line 168
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 172
    goto :goto_6

    .line 170
    :catch_3
    move-exception v1

    .line 171
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v1    # "e":Ljava/io/IOException;
    :goto_6
    return v5

    .line 159
    :catchall_0
    move-exception v5

    .line 160
    if-eqz v3, :cond_4

    .line 161
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    .line 163
    :catch_4
    move-exception v6

    .line 164
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v2, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 165
    .end local v6    # "e":Ljava/io/IOException;
    :cond_4
    :goto_7
    nop

    .line 167
    :goto_8
    if-eqz v4, :cond_5

    .line 168
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    .line 170
    :catch_5
    move-exception v1

    .line 171
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 172
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    :goto_9
    nop

    .line 173
    :goto_a
    throw v5
.end method
