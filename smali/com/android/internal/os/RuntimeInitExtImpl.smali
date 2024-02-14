.class public Lcom/android/internal/os/RuntimeInitExtImpl;
.super Ljava/lang/Object;
.source "RuntimeInitExtImpl.java"

# interfaces
.implements Lcom/android/internal/os/IRuntimeInitExt;


# static fields
.field private static final blacklist PRELOAD_CLASSES:[Ljava/lang/String;

.field static final blacklist TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 31
    const-string v0, "system.ext.registry.PreloadRegistry"

    const-string v1, "system.ext.registry.BaseCommonCoreRegistry"

    const-string v2, "system.ext.registry.SocCommonCoreRegistry"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/RuntimeInitExtImpl;->PRELOAD_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist preload(Ljava/lang/ClassLoader;)V
    .locals 8
    .param p0, "preloadClassLoader"    # Ljava/lang/ClassLoader;

    .line 62
    const-string v0, "AndroidRuntime"

    if-nez p0, :cond_0

    .line 63
    const-class v1, Lcom/android/internal/os/RuntimeInitExtImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 66
    :cond_0
    sget-object v1, Lcom/android/internal/os/RuntimeInitExtImpl;->PRELOAD_CLASSES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 68
    .local v4, "preloadClass":Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_0
    invoke-static {v4, v5, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_1
    goto :goto_2

    .line 73
    :catchall_0
    move-exception v1

    .line 74
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error preloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    instance-of v0, v1, Ljava/lang/Error;

    if-nez v0, :cond_2

    .line 77
    instance-of v0, v1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 78
    move-object v0, v1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 76
    :cond_2
    move-object v0, v1

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 71
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v5

    .line 72
    .local v5, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem preloading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_1

    .line 69
    :catch_1
    move-exception v5

    .line 70
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "Class not found for extloader"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1

    .line 66
    .end local v4    # "preloadClass":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist uncaughtExceptionExt(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 44
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    .local v0, "t2":Ljava/lang/Throwable;
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x6

    :try_start_1
    const-string v3, "AndroidRuntime"

    const-string v4, "Error reporting crash"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    goto :goto_0

    .line 51
    :catchall_1
    move-exception v1

    .line 56
    .end local v0    # "t2":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 58
    :cond_1
    return-void
.end method
