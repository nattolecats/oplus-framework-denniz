.class public Lcom/oplus/phoenix/Phoenix;
.super Ljava/lang/Object;
.source "Phoenix.java"


# static fields
.field public static final whitelist ANDROID_AMS_ENABLE_SCREEN:Ljava/lang/String; = "ANDROID_AMS_ENABLE_SCREEN"

.field public static final whitelist ANDROID_AMS_READY:Ljava/lang/String; = "ANDROID_AMS_READY"

.field public static final whitelist ANDROID_BOOT_COMPLETED:Ljava/lang/String; = "ANDROID_BOOT_COMPLETED"

.field public static final whitelist ANDROID_PMS_DEXOPT_END:Ljava/lang/String; = "ANDROID_PMS_DEXOPT_END"

.field public static final whitelist ANDROID_PMS_DEXOPT_PERSISTPKGS_END:Ljava/lang/String; = "ANDROID_PMS_DEXOPT_PERSISTPKGS_END"

.field public static final whitelist ANDROID_PMS_DEXOPT_PERSISTPKGS_START:Ljava/lang/String; = "ANDROID_PMS_DEXOPT_PERSISTPKGS_START"

.field public static final whitelist ANDROID_PMS_DEXOPT_START:Ljava/lang/String; = "ANDROID_PMS_DEXOPT_START"

.field public static final whitelist ANDROID_PMS_INIT_START:Ljava/lang/String; = "ANDROID_PMS_INIT_START"

.field public static final whitelist ANDROID_PMS_READY:Ljava/lang/String; = "ANDROID_PMS_READY"

.field public static final whitelist ANDROID_PMS_SCAN_END:Ljava/lang/String; = "ANDROID_PMS_SCAN_END"

.field public static final whitelist ANDROID_PMS_SCAN_START:Ljava/lang/String; = "ANDROID_PMS_SCAN_START"

.field public static final whitelist ANDROID_SYSTEMSERVER_INIT_START:Ljava/lang/String; = "ANDROID_SYSTEMSERVER_INIT_START"

.field public static final whitelist ANDROID_SYSTEMSERVER_READY:Ljava/lang/String; = "ANDROID_SYSTEMSERVER_READY"

.field public static final whitelist ANDROID_ZYGOTE_GC_INIT_END:Ljava/lang/String; = "ANDROID_ZYGOTE_GC_INIT_END"

.field public static final whitelist ANDROID_ZYGOTE_GC_INIT_START:Ljava/lang/String; = "ANDROID_ZYGOTE_GC_INIT_START"

.field public static final whitelist ANDROID_ZYGOTE_INIT_END:Ljava/lang/String; = "ANDROID_ZYGOTE_INIT_END"

.field public static final whitelist ANDROID_ZYGOTE_INIT_START:Ljava/lang/String; = "ANDROID_ZYGOTE_INIT_START"

.field public static final whitelist ANDROID_ZYGOTE_PRELOAD_END:Ljava/lang/String; = "ANDROID_ZYGOTE_PRELOAD_END"

.field public static final whitelist ANDROID_ZYGOTE_PRELOAD_START:Ljava/lang/String; = "ANDROID_ZYGOTE_PRELOAD_START"

.field private static final blacklist BOOT_COMPLETED:Ljava/lang/String; = "1"

.field public static final whitelist ERROR_SYSTEM_SERVER_WATCHDOG:Ljava/lang/String; = "ERROR_SYSTEM_SERVER_WATCHDOG"

.field private static final blacklist PHOENIX_TAG:Ljava/lang/String; = "[PHOENIX]"

.field private static final blacklist TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static whitelist isSwtHappened:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    const-string v0, "phoenix_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/phoenix/Phoenix;->isSwtHappened:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getFormatLocaltime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "format"    # Ljava/lang/String;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isBootCompleted()Z
    .locals 2

    .line 76
    const-string v0, "sys.oplus.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static native whitelist native_set_booterror(Ljava/lang/String;)V
.end method

.method public static native whitelist native_set_bootstage(Ljava/lang/String;)V
.end method

.method public static whitelist setBooterror(Ljava/lang/String;)V
    .locals 2
    .param p0, "booterror"    # Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " errno: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1}, Lcom/oplus/phoenix/Phoenix;->getFormatLocaltime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[PHOENIX]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p0}, Lcom/oplus/phoenix/Phoenix;->native_set_booterror(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static whitelist setBootstage(Ljava/lang/String;)V
    .locals 2
    .param p0, "bootstage"    # Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/oplus/phoenix/Phoenix;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[PHOENIX]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {p0}, Lcom/oplus/phoenix/Phoenix;->native_set_bootstage(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static whitelist updateProcOpbootfrom(ZZZ)V
    .locals 3
    .param p0, "isBootFromOTA"    # Z
    .param p1, "isUpgrade"    # Z
    .param p2, "isFirstBoot"    # Z

    .line 123
    if-eqz p0, :cond_0

    .line 124
    :try_start_0
    const-string v0, "ota"

    invoke-static {v0}, Landroid/os/ProjectManager;->setOpBoot(Ljava/lang/String;)Z

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_1

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    .line 126
    const-string v0, "upgrade"

    invoke-static {v0}, Landroid/os/ProjectManager;->setOpBoot(Ljava/lang/String;)Z

    goto :goto_0

    .line 127
    :cond_1
    if-eqz p2, :cond_2

    .line 128
    const-string v0, "first_boot"

    invoke-static {v0}, Landroid/os/ProjectManager;->setOpBoot(Ljava/lang/String;)Z

    goto :goto_0

    .line 130
    :cond_2
    const-string v0, "normal"

    invoke-static {v0}, Landroid/os/ProjectManager;->setOpBoot(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    goto :goto_2

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[PHOENIX]"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private static blacklist writeBootFromProc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "context"    # Ljava/lang/String;

    .line 97
    const-string v0, "writeBootFromProc close the writer failed!!!"

    const-string v1, "[PHOENIX]"

    const/4 v2, 0x0

    .line 98
    .local v2, "resultStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 99
    .local v3, "fileWriter":Ljava/io/FileWriter;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v4, "f":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 102
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 104
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    nop

    .line 111
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :goto_0
    goto :goto_1

    .line 112
    :catch_0
    move-exception v5

    .line 113
    .local v5, "e1":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "e1":Ljava/io/IOException;
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 105
    :catch_1
    move-exception v5

    .line 106
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "writeBootFromProc write failed!!!"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    nop

    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_0

    .line 111
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 117
    :cond_0
    :goto_1
    return-object v2

    .line 108
    :goto_2
    if-eqz v3, :cond_1

    .line 111
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 114
    goto :goto_3

    .line 112
    :catch_2
    move-exception v6

    .line 113
    .local v6, "e1":Ljava/io/IOException;
    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v6    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v5
.end method
