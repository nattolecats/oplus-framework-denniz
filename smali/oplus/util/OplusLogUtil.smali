.class public Loplus/util/OplusLogUtil;
.super Ljava/lang/Object;
.source "OplusLogUtil.java"


# static fields
.field public static blacklist DEBUG:Z

.field public static final blacklist DEBUG_PANIC:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 30
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Loplus/util/OplusLogUtil;->DEBUG_PANIC:Z

    .line 31
    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Loplus/util/OplusLogUtil;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist formatLogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Loplus/util/OplusLogUtil;->formatLogD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public static varargs blacklist formatLogD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 72
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Loplus/util/OplusLogUtil;->formatLogD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static varargs blacklist formatLogD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "shouldLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 84
    const/4 v3, 0x0

    move v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Loplus/util/OplusLogUtil;->formatLogDInner(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public static varargs blacklist formatLogD(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "shouldLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Loplus/util/OplusLogUtil;->formatLogD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method private static varargs blacklist formatLogDInner(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "shouldLog"    # Z
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "logId"    # I
    .param p4, "tr"    # Ljava/lang/Throwable;
    .param p5, "args"    # [Ljava/lang/Object;

    .line 89
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    :try_start_0
    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0, p4}, Loplus/util/OplusLogUtil;->logDInner(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "format error."

    invoke-static {p2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 90
    :cond_1
    :goto_1
    return-void
.end method

.method public static varargs blacklist formatSysLogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 104
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Loplus/util/OplusLogUtil;->formatSysLogD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public static varargs blacklist formatSysLogD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Loplus/util/OplusLogUtil;->formatSysLogD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public static varargs blacklist formatSysLogD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "shouldLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 112
    const/4 v3, 0x3

    move v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Loplus/util/OplusLogUtil;->formatLogDInner(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;[Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public static varargs blacklist formatSysLogD(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "shouldLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 108
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Loplus/util/OplusLogUtil;->formatSysLogD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public static blacklist logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Loplus/util/OplusLogUtil;->logD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method public static blacklist logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 42
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Loplus/util/OplusLogUtil;->logD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public static blacklist logD(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "shouldLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Loplus/util/OplusLogUtil;->logD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public static blacklist logD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "shouldLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 46
    if-nez p0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Loplus/util/OplusLogUtil;->logDInner(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

.method private static blacklist logDInner(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "logId"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 116
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 126
    :sswitch_0
    if-eqz p3, :cond_0

    .line 127
    invoke-static {p0, p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    goto :goto_0

    .line 118
    :sswitch_1
    if-eqz p3, :cond_1

    .line 119
    invoke-static {p0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    nop

    .line 138
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist sysLogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Loplus/util/OplusLogUtil;->sysLogD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public static blacklist sysLogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 61
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Loplus/util/OplusLogUtil;->sysLogD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public static blacklist sysLogD(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "shouldLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Loplus/util/OplusLogUtil;->sysLogD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method

.method public static blacklist sysLogD(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "shouldLog"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .line 65
    if-nez p0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x3

    invoke-static {p1, v0, p2, p3}, Loplus/util/OplusLogUtil;->logDInner(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method
