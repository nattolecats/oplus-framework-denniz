.class public Landroid/os/EnvironmentExtImpl;
.super Ljava/lang/Object;
.source "EnvironmentExtImpl.java"


# static fields
.field private static final blacklist DEVICE_MANUFACTURE:Ljava/lang/String; = "manufacture"

.field private static final blacklist DEVICE_MANUFACTURE_HYNIX:Ljava/lang/String; = "HYNIX"

.field private static final blacklist DEVICE_MANUFACTURE_MICRON:Ljava/lang/String; = "MICRON"

.field private static final blacklist DEVICE_MANUFACTURE_SANDISK:Ljava/lang/String; = "SANDISK"

.field private static final blacklist DEVICE_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist DEVICE_VERSION_MICRON:Ljava/lang/String; = "S0J9F8"

.field private static final blacklist TAG:Ljava/lang/String; = "Environment"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addCanonicalFile(Ljava/util/List;Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 138
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Environment"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static blacklist addSystemExtFile(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Landroid/os/EnvironmentExtImpl;->isHapticSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "media/audio/alarms"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 124
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "media/audio/dynamic/notifications"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "media/audio/ui"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 129
    :goto_0
    return-void
.end method

.method public static blacklist adjustListInGetInternalMediaDirectories(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {p0}, Landroid/os/EnvironmentExtImpl;->addSystemExtFile(Ljava/util/List;)V

    .line 54
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyProductDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCountryDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyOperatorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyBigballDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 59
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/theme"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "ring"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 60
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "audio"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 61
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "applying"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 65
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/oplus/multimedia"

    const-string v2, "ringtones"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 66
    new-instance v0, Ljava/io/File;

    const-string v3, "notifications"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 67
    new-instance v0, Ljava/io/File;

    const-string v4, "ui"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 68
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/oppo/multimedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/os/EnvironmentExtImpl;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 72
    return-void
.end method

.method public static blacklist interceptMaybeTranslateEmulatedPathToInternal()Z
    .locals 3

    .line 77
    const/4 v0, 0x1

    .line 78
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 79
    const-string v1, "Environment"

    const-string v2, "maybeTranslateEmulatedPathToInternal support translate ext4 path"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return v0
.end method

.method private static blacklist isHapticSupport()Z
    .locals 2

    .line 132
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstacne()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.audio.haptic_channel_support"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isWhiteListMcp()Z
    .locals 8

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 90
    const-string v2, "Environment"

    const-string v3, "isWhiteListMcp,getDeviceInfo result is null,return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v1

    .line 93
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 94
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 95
    .local v3, "deviceVersion":Ljava/lang/String;
    const/4 v4, 0x0

    .line 96
    .local v4, "deviceManufacture":Ljava/lang/String;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 98
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 99
    .local v6, "key":Ljava/lang/String;
    const-string v7, "manufacture"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 101
    :cond_1
    const-string v7, "version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Ljava/lang/String;

    .line 104
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    :cond_2
    :goto_1
    goto :goto_0

    .line 105
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 109
    const-string v5, "HYNIX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 110
    const-string v5, "MICRON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 111
    const-string v5, "SANDISK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 112
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 115
    :cond_5
    return v1
.end method
