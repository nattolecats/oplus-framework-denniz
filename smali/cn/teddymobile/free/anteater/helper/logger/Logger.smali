.class public Lcn/teddymobile/free/anteater/helper/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final blacklist D:I = 0x2

.field public static final blacklist E:I = 0x4

.field public static final blacklist I:I = 0x1

.field private static final blacklist LOG_DEBUG:Z

.field private static final blacklist LOG_LEVEL:I = 0x1

.field private static final blacklist LOG_PANIC:Z

.field private static final blacklist UNIFIED:Z = true

.field private static final blacklist UNIFIED_TAG:Ljava/lang/String; = "AnteaterHelper"

.field public static final blacklist V:I = 0x0

.field public static final blacklist W:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 27
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/teddymobile/free/anteater/helper/logger/Logger;->LOG_PANIC:Z

    .line 28
    const-string v0, "log.favorite.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/teddymobile/free/anteater/helper/logger/Logger;->LOG_DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcn/teddymobile/free/anteater/helper/logger/Logger;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 63
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcn/teddymobile/free/anteater/helper/logger/Logger;->doLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method private static blacklist doLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 88
    invoke-static {p0}, Lcn/teddymobile/free/anteater/helper/logger/Logger;->isLogOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 90
    const-string p1, "AnteaterHelper"

    .line 91
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    goto :goto_0

    .line 101
    :pswitch_2
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    goto :goto_0

    .line 97
    :pswitch_3
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    goto :goto_0

    .line 93
    :pswitch_4
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist doLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 116
    invoke-static {p0}, Lcn/teddymobile/free/anteater/helper/logger/Logger;->isLogOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 118
    const-string p1, "AnteaterHelper"

    .line 119
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    goto :goto_0

    .line 129
    :pswitch_2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    goto :goto_0

    .line 125
    :pswitch_3
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    goto :goto_0

    .line 121
    :pswitch_4
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcn/teddymobile/free/anteater/helper/logger/Logger;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 71
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcn/teddymobile/free/anteater/helper/logger/Logger;->doLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcn/teddymobile/free/anteater/helper/logger/Logger;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 59
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcn/teddymobile/free/anteater/helper/logger/Logger;->doLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method

.method private static blacklist isLogOn(I)Z
    .locals 2
    .param p0, "level"    # I

    .line 78
    sget-boolean v0, Lcn/teddymobile/free/anteater/helper/logger/Logger;->LOG_PANIC:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcn/teddymobile/free/anteater/helper/logger/Logger;->LOG_DEBUG:Z

    if-nez v0, :cond_0

    .line 79
    return v1

    .line 81
    :cond_0
    const/4 v0, 0x1

    if-ge p0, v0, :cond_1

    .line 82
    return v1

    .line 84
    :cond_1
    return v0
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcn/teddymobile/free/anteater/helper/logger/Logger;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 55
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcn/teddymobile/free/anteater/helper/logger/Logger;->doLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcn/teddymobile/free/anteater/helper/logger/Logger;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 67
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcn/teddymobile/free/anteater/helper/logger/Logger;->doLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method
