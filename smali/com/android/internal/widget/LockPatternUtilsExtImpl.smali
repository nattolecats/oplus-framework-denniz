.class public Lcom/android/internal/widget/LockPatternUtilsExtImpl;
.super Ljava/lang/Object;
.source "LockPatternUtilsExtImpl.java"

# interfaces
.implements Lcom/android/internal/widget/ILockPatternUtilsExt;


# static fields
.field public static final blacklist LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final blacklist LOCKOUT_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockoutattempttimeoutmss"

.field public static final blacklist LOCKSCREEN_TIMEOUT_FLAG:Ljava/lang/String; = "lockscreen.timeout_flag"


# instance fields
.field private blacklist mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockPatternUtils;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsExtImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist getLockoutAttemptDeadline(ILcom/android/internal/widget/LockPatternUtils;)J
    .locals 10
    .param p1, "userId"    # I
    .param p2, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 56
    monitor-enter p2

    .line 57
    :try_start_0
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternUtils;->getWrapper()Landroid/widget/ILockPatternUtilsWrapper;

    move-result-object v0

    .line 58
    .local v0, "wrapper":Landroid/widget/ILockPatternUtilsWrapper;
    const-string v1, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Landroid/widget/ILockPatternUtilsWrapper;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 59
    .local v4, "deadline":J
    const-string v1, "lockscreen.lockoutattempttimeoutmss"

    invoke-interface {v0, v1, v2, v3, p1}, Landroid/widget/ILockPatternUtilsWrapper;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    .line 60
    .local v6, "timeoutMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 61
    .local v8, "now":J
    cmp-long v1, v4, v8

    if-gez v1, :cond_0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "lockscreen.lockoutattemptdeadline"

    invoke-interface {v0, v1, v2, v3, p1}, Landroid/widget/ILockPatternUtilsWrapper;->setLong(Ljava/lang/String;JI)V

    .line 65
    const-string v1, "lockscreen.lockoutattempttimeoutmss"

    invoke-interface {v0, v1, v2, v3, p1}, Landroid/widget/ILockPatternUtilsWrapper;->setLong(Ljava/lang/String;JI)V

    .line 66
    monitor-exit p2

    return-wide v2

    .line 69
    :cond_0
    add-long v1, v8, v6

    cmp-long v1, v4, v1

    if-lez v1, :cond_1

    .line 71
    add-long v4, v8, v6

    .line 72
    const-string v1, "lockscreen.lockoutattemptdeadline"

    invoke-interface {v0, v1, v4, v5, p1}, Landroid/widget/ILockPatternUtilsWrapper;->setLong(Ljava/lang/String;JI)V

    .line 73
    invoke-interface {v0}, Landroid/widget/ILockPatternUtilsWrapper;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v0}, Landroid/widget/ILockPatternUtilsWrapper;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockoutAttemptDeadline: now= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deadline= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    monitor-exit p2

    return-wide v4

    .line 78
    .end local v0    # "wrapper":Landroid/widget/ILockPatternUtilsWrapper;
    .end local v4    # "deadline":J
    .end local v6    # "timeoutMs":J
    .end local v8    # "now":J
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getTimeoutFlag(ILcom/android/internal/widget/LockPatternUtils;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 45
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternUtils;->getWrapper()Landroid/widget/ILockPatternUtilsWrapper;

    move-result-object v0

    const-string v1, "lockscreen.timeout_flag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/widget/ILockPatternUtilsWrapper;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public blacklist savePasswordLenght(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .locals 1
    .param p1, "resover"    # Landroid/content/ContentResolver;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I
    .param p4, "userId"    # I

    .line 95
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 100
    :cond_0
    return-void
.end method

.method public blacklist setLockoutAttemptDeadline(IJILcom/android/internal/widget/LockPatternUtils;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "deadline"    # J
    .param p4, "timeoutMs"    # I
    .param p5, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 83
    monitor-enter p5

    .line 84
    :try_start_0
    invoke-virtual {p5}, Lcom/android/internal/widget/LockPatternUtils;->getWrapper()Landroid/widget/ILockPatternUtilsWrapper;

    move-result-object v0

    .line 85
    .local v0, "wrapper":Landroid/widget/ILockPatternUtilsWrapper;
    const-string v1, "lockscreen.lockoutattemptdeadline"

    invoke-interface {v0, v1, p2, p3, p1}, Landroid/widget/ILockPatternUtilsWrapper;->setLong(Ljava/lang/String;JI)V

    .line 86
    const-string v1, "lockscreen.lockoutattempttimeoutmss"

    int-to-long v2, p4

    invoke-interface {v0, v1, v2, v3, p1}, Landroid/widget/ILockPatternUtilsWrapper;->setLong(Ljava/lang/String;JI)V

    .line 87
    invoke-interface {v0}, Landroid/widget/ILockPatternUtilsWrapper;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-interface {v0}, Landroid/widget/ILockPatternUtilsWrapper;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLockoutAttemptDeadline: userId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timeoutMs ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "wrapper":Landroid/widget/ILockPatternUtilsWrapper;
    :cond_0
    monitor-exit p5

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist setTimeoutFlag(ZILcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "flag"    # Z
    .param p2, "userId"    # I
    .param p3, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 49
    invoke-virtual {p3}, Lcom/android/internal/widget/LockPatternUtils;->getWrapper()Landroid/widget/ILockPatternUtilsWrapper;

    move-result-object v0

    const-string v1, "lockscreen.timeout_flag"

    invoke-interface {v0, v1, p1, p2}, Landroid/widget/ILockPatternUtilsWrapper;->setBoolean(Ljava/lang/String;ZI)V

    .line 50
    return-void
.end method
