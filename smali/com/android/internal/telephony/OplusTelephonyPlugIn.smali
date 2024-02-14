.class public Lcom/android/internal/telephony/OplusTelephonyPlugIn;
.super Ljava/lang/Object;
.source "OplusTelephonyPlugIn.java"


# static fields
.field private static final blacklist NR_FACTORY_CLS:Ljava/lang/String; = "com.oplus.nrMode.OplusNrModeFactory"

.field private static final blacklist NR_PLUGIN_APK:Ljava/lang/String; = "/system_ext/priv-app/OplusNrMode/OplusNrMode.apk"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusTelephonyPlugIn"

.field private static blacklist sInstance:Lcom/android/internal/telephony/OplusTelephonyPlugIn;

.field private static blacklist sOplusNrMode:Lcom/android/internal/telephony/IOplusNrModePlugIn;


# instance fields
.field private blacklist mCachePath:Ljava/lang/String;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->sInstance:Lcom/android/internal/telephony/OplusTelephonyPlugIn;

    .line 16
    sput-object v0, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->sOplusNrMode:Lcom/android/internal/telephony/IOplusNrModePlugIn;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->mCachePath:Ljava/lang/String;

    .line 20
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->mLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/OplusTelephonyPlugIn;
    .locals 2

    .line 23
    const-class v0, Lcom/android/internal/telephony/OplusTelephonyPlugIn;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->sInstance:Lcom/android/internal/telephony/OplusTelephonyPlugIn;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/android/internal/telephony/OplusTelephonyPlugIn;

    invoke-direct {v1}, Lcom/android/internal/telephony/OplusTelephonyPlugIn;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->sInstance:Lcom/android/internal/telephony/OplusTelephonyPlugIn;

    .line 27
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->sInstance:Lcom/android/internal/telephony/OplusTelephonyPlugIn;

    monitor-exit v0

    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist isInitialized()Z
    .locals 1

    .line 33
    sget-object v0, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->sInstance:Lcom/android/internal/telephony/OplusTelephonyPlugIn;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    const-string v0, "OplusTelephonyPlugIn"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist getOplusNrModeFactory()Lcom/android/internal/telephony/IOplusNrModePlugIn;
    .locals 5

    .line 38
    sget-object v0, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->sOplusNrMode:Lcom/android/internal/telephony/IOplusNrModePlugIn;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "getOplusNrFactory: NR_PLUGIN_APK = /system_ext/priv-app/OplusNrMode/OplusNrMode.apk"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->logd(Ljava/lang/String;)V

    .line 40
    const-string v0, "getOplusNrFactory: NR_FACTORY_CLS = com.oplus.nrMode.OplusNrModeFactory"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->logd(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->mCachePath:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->mLoader:Ljava/lang/ClassLoader;

    const-string v4, "/system_ext/priv-app/OplusNrMode/OplusNrMode.apk"

    invoke-direct {v0, v4, v1, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 43
    .local v0, "loader":Ldalvik/system/DexClassLoader;
    :try_start_0
    const-string v1, "com.oplus.nrMode.OplusNrModeFactory"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 44
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IOplusNrModePlugIn;

    sput-object v2, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->sOplusNrMode:Lcom/android/internal/telephony/IOplusNrModePlugIn;

    .line 45
    iget-object v3, p0, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IOplusNrModePlugIn;->initialOnce(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    new-instance v2, Lcom/android/internal/telephony/OplusTelephonyPlugIn$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/OplusTelephonyPlugIn$1;-><init>(Lcom/android/internal/telephony/OplusTelephonyPlugIn;)V

    sput-object v2, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->sOplusNrMode:Lcom/android/internal/telephony/IOplusNrModePlugIn;

    .line 51
    .end local v0    # "loader":Ldalvik/system/DexClassLoader;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/OplusTelephonyPlugIn;->sOplusNrMode:Lcom/android/internal/telephony/IOplusNrModePlugIn;

    return-object v0
.end method
