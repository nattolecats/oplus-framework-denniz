.class public Landroid/os/OplusDebug;
.super Ljava/lang/Object;
.source "OplusDebug.java"


# static fields
.field public static final whitelist DEBUG_SYSTRACE_TAG:Z

.field public static whitelist IS_RELEASE_VERSION:Z = false

.field public static final whitelist LAUNCH_DELAY:I

.field public static final whitelist LAUNCH_DELAY_DEFAULT:I = 0x1f4

.field public static final whitelist LAUNCH_EXCEPTION_DELAY:I

.field public static final whitelist LAUNCH_SECOND_DELAY:I

.field public static final whitelist LAUNCH_SECOND_DELAY_DEFAULT:I = 0x12c

.field public static final whitelist LOOPER_DELAY:I

.field public static final whitelist LOOPER_DELAY_DEFAULT:I = 0x3e8

.field public static final whitelist MIN_DELAY:I = 0x32

.field private static final blacklist TAG:Ljava/lang/String; = "OplusDebug"

.field public static final whitelist TYPE_LAUNCH_EXCEPTION_DEFAULT:I = 0x7d0

.field public static final whitelist VIEW_DELAY:I

.field public static final whitelist VIEW_DELAY_DEFAULT:I = 0x64


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 30
    const-string v0, "debug.oplus.looper_delay"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/OplusDebug;->LOOPER_DELAY:I

    .line 31
    const-string v0, "persist.sys.launch_delay"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/OplusDebug;->LAUNCH_DELAY:I

    .line 32
    const-string v0, "persist.sys.launch_second_delay"

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/OplusDebug;->LAUNCH_SECOND_DELAY:I

    .line 33
    const-string v0, "persist.sys.view_delay"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/OplusDebug;->VIEW_DELAY:I

    .line 34
    const-string v0, "persist.sys.launch_exception_delay"

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/OplusDebug;->LAUNCH_EXCEPTION_DELAY:I

    .line 35
    const-string v0, "ro.build.release_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OplusDebug;->IS_RELEASE_VERSION:Z

    .line 36
    xor-int/lit8 v0, v0, 0x1

    const-string v1, "debug.oplus.systrace_enhance"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OplusDebug;->DEBUG_SYSTRACE_TAG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
