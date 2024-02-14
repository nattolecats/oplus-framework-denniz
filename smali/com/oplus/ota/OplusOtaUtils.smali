.class public Lcom/oplus/ota/OplusOtaUtils;
.super Ljava/lang/Object;
.source "OplusOtaUtils.java"


# static fields
.field private static final blacklist OTA_UPDATE_FAILED:Ljava/lang/String; = "1"

.field private static final blacklist OTA_UPDATE_OK:Ljava/lang/String; = "0"

.field private static final blacklist RECOVER_UPDATE_FAILED:Ljava/lang/String; = "3"

.field private static final blacklist RECOVER_UPDATE_OK:Ljava/lang/String; = "2"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusOtaUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist notifyOTAUpdateResult(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "isSauUpdate":Z
    const-string v1, "/cache/recovery/last_install"

    .line 57
    .local v1, "lastInstallPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, "lastInstallFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-static {v1}, Lcom/oplus/ota/OplusOtaUtils;->readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "otaResultStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "/.SAU/zip/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    const/4 v0, 0x1

    .line 65
    .end local v3    # "otaResultStr":Ljava/lang/String;
    :cond_0
    const-string v3, "/cache/recovery/intent"

    .line 66
    .local v3, "otaFilePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v4, "file":Ljava/io/File;
    const-string v5, "/cache/recovery/intent_from_op"

    .line 69
    .local v5, "otaFilePathForOpProject":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v6, "fileForOpProject":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const-string v8, "OplusOtaUtils"

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    const-string v7, "delete /cache/recovery/intent_from_op file"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 75
    :cond_1
    const-string v7, "check /cache/recovery/intent"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 77
    const-string v7, "/cache/recovery/intent file is exist!!!"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {v3}, Lcom/oplus/ota/OplusOtaUtils;->readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "otaResultStr":Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "ffuresult"

    const/high16 v11, 0x1000000

    if-eqz v9, :cond_4

    .line 81
    const-string v9, "OTA update successed!!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v8, Landroid/content/Intent;

    if-eqz v0, :cond_2

    const-string v9, "oplus.intent.action.OPLUS_SAU_UPDATE_SUCCESSED"

    goto :goto_0

    :cond_2
    const-string v9, "oplus.intent.action.OPLUS_OTA_UPDATE_SUCCESSED"

    :goto_0
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v8, "otaIntent":Landroid/content/Intent;
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    invoke-static {}, Lcom/oplus/ota/OplusOtaUtils;->readFFUUpdateResult()Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "ffuresult":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 87
    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_3
    invoke-virtual {p0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "persist.sys.panictime"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v8    # "otaIntent":Landroid/content/Intent;
    .end local v9    # "ffuresult":Ljava/lang/String;
    goto :goto_2

    :cond_4
    const-string v9, "1"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 93
    const-string v9, "OTA update failed!!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v8, Landroid/content/Intent;

    if-eqz v0, :cond_5

    const-string v9, "oplus.intent.action.OPLUS_SAU_UPDATE_FAILED"

    goto :goto_1

    :cond_5
    const-string v9, "oplus.intent.action.OPLUS_OTA_UPDATE_FAILED"

    :goto_1
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v8    # "otaIntent":Landroid/content/Intent;
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-static {p0, v8}, Lcom/oplus/ota/OplusOtaUtils;->sendOTAFailLogIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 98
    .end local v8    # "otaIntent":Landroid/content/Intent;
    goto :goto_2

    :cond_6
    const-string v9, "2"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 99
    const-string v9, "Recover update ok!!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v8, Landroid/content/Intent;

    const-string v9, "oplus.intent.action.OPLUS_RECOVER_UPDATE_SUCCESSED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v8    # "otaIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/oplus/ota/OplusOtaUtils;->readFFUUpdateResult()Ljava/lang/String;

    move-result-object v9

    .line 103
    .restart local v9    # "ffuresult":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 104
    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    :cond_7
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    .end local v8    # "otaIntent":Landroid/content/Intent;
    .end local v9    # "ffuresult":Ljava/lang/String;
    goto :goto_2

    :cond_8
    const-string v9, "3"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 110
    const-string v9, "Recover update failed!!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v8, Landroid/content/Intent;

    const-string v9, "oplus.intent.action.OPLUS_RECOVER_UPDATE_FAILED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v8    # "otaIntent":Landroid/content/Intent;
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    invoke-static {p0, v8}, Lcom/oplus/ota/OplusOtaUtils;->sendOTAFailLogIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 115
    .end local v8    # "otaIntent":Landroid/content/Intent;
    goto :goto_2

    .line 116
    :cond_9
    const-string v9, "OTA update file\'s date is invalid!!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v7    # "otaResultStr":Ljava/lang/String;
    :cond_a
    :goto_2
    return-void
.end method

.method private static blacklist readFFUUpdateResult()Ljava/lang/String;
    .locals 7

    .line 162
    const-string v0, "readFFUUpdateResult close the reader failed!!!"

    const-string v1, "OplusOtaUtils"

    const/4 v2, 0x0

    .line 163
    .local v2, "resultStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 164
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/File;

    const-string v5, "/cache/recovery/last_ffu"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 168
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readFFUUpdateResult resultStr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    nop

    .line 175
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :goto_0
    goto :goto_3

    .line 176
    :catch_0
    move-exception v5

    .line 177
    .local v5, "e1":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e1":Ljava/io/IOException;
    goto :goto_0

    .line 173
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 170
    :catch_1
    move-exception v5

    .line 171
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "readFFUUpdateResult failed!!!"

    invoke-static {v1, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    nop

    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1

    .line 175
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 173
    :goto_1
    if-eqz v3, :cond_0

    .line 175
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 178
    goto :goto_2

    .line 176
    :catch_2
    move-exception v6

    .line 177
    .local v6, "e1":Ljava/io/IOException;
    invoke-static {v1, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v6    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_2
    throw v5

    .line 182
    :cond_1
    :goto_3
    return-object v2
.end method

.method private static blacklist readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    .line 138
    const-string v0, "readOTAUpdateResult close the reader failed!!!"

    const-string v1, "OplusOtaUtils"

    const/4 v2, 0x0

    .line 139
    .local v2, "resultStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 141
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 145
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    .line 149
    nop

    .line 151
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :goto_0
    goto :goto_1

    .line 152
    :catch_0
    move-exception v5

    .line 153
    .local v5, "e1":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e1":Ljava/io/IOException;
    goto :goto_0

    .line 149
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 146
    :catch_1
    move-exception v5

    .line 147
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "readOTAUpdateResult failed!!!"

    invoke-static {v1, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    nop

    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_0

    .line 151
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 158
    :cond_0
    :goto_1
    return-object v2

    .line 149
    :goto_2
    if-eqz v3, :cond_1

    .line 151
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 154
    goto :goto_3

    .line 152
    :catch_2
    move-exception v6

    .line 153
    .local v6, "e1":Ljava/io/IOException;
    invoke-static {v1, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v6    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v5
.end method

.method private static blacklist sendOTAFailLogIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "otaIntent"    # Landroid/content/Intent;

    .line 122
    invoke-static {}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->readErrorMapFromConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->readOTAUpdateFailedTypeFromLastLog(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v0

    .line 123
    .local v0, "failedMsg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v1, "OplusOtaUtils"

    if-eqz v0, :cond_0

    .line 124
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/io/Serializable;

    const-string v3, "errType"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 125
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "errLine"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 127
    :cond_0
    const-string v2, "failed msg is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    const-string v2, "deal ota log pass!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method
