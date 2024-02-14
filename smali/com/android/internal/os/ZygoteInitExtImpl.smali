.class public Lcom/android/internal/os/ZygoteInitExtImpl;
.super Ljava/lang/Object;
.source "ZygoteInitExtImpl.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addBootEvent(Ljava/lang/String;)V
    .locals 5
    .param p0, "bootevent"    # Ljava/lang/String;

    .line 53
    const-string v0, "Failure close /proc/bootprof entry"

    const-string v1, "BOOTPROF"

    const/4 v2, 0x0

    .line 55
    .local v2, "fbp":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/proc/bootprof"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 57
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    nop

    .line 65
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    :goto_0
    goto :goto_1

    .line 66
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 60
    :catch_1
    move-exception v3

    .line 61
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "Failure open /proc/bootprof entry"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_0

    .line 65
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 58
    :catch_2
    move-exception v3

    .line 59
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v4, "Failure open /proc/bootprof, not found!"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 63
    nop

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_0

    .line 65
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 71
    :cond_0
    :goto_1
    return-void

    .line 63
    :goto_2
    if-eqz v2, :cond_1

    .line 65
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 68
    goto :goto_3

    .line 66
    :catch_3
    move-exception v4

    .line 67
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v3
.end method

.method public static blacklist beginHookGcAndFinalize(Z)V
    .locals 1
    .param p0, "enableLazyPreload"    # Z

    .line 38
    if-nez p0, :cond_0

    .line 39
    const-string v0, "ANDROID_ZYGOTE_GC_INIT_START"

    invoke-static {v0}, Lcom/oplus/phoenix/Phoenix;->setBootstage(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public static blacklist beginHookPreload()V
    .locals 1

    .line 24
    const-string v0, "ANDROID_ZYGOTE_PRELOAD_START"

    invoke-static {v0}, Lcom/oplus/phoenix/Phoenix;->setBootstage(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static blacklist endHookGcAndFinalize(Z)V
    .locals 1
    .param p0, "enableLazyPreload"    # Z

    .line 46
    if-nez p0, :cond_0

    .line 47
    const-string v0, "ANDROID_ZYGOTE_GC_INIT_END"

    invoke-static {v0}, Lcom/oplus/phoenix/Phoenix;->setBootstage(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method

.method public static blacklist endHookPreload()V
    .locals 1

    .line 31
    const-string v0, "ANDROID_ZYGOTE_PRELOAD_END"

    invoke-static {v0}, Lcom/oplus/phoenix/Phoenix;->setBootstage(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static blacklist hookPreloadResources(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "tag"    # Ljava/lang/String;

    .line 17
    sget-object v0, Landroid/app/IOplusCommonInjector;->DEFAULT:Landroid/app/IOplusCommonInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusCommonInjector;

    invoke-interface {v0, p0, p1}, Landroid/app/IOplusCommonInjector;->hookPreloadResources(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 19
    return-void
.end method
