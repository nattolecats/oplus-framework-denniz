.class public Landroid/inputmethodservice/OplusInputMethodServiceUtils;
.super Ljava/lang/Object;
.source "OplusInputMethodServiceUtils.java"

# interfaces
.implements Landroid/inputmethodservice/IOplusInputMethodServiceUtils;


# static fields
.field public static final whitelist MODE_NAVIGATIONBAR_GESTURE:I = 0x2

.field public static final whitelist MODE_NAVIGATIONBAR_GESTURE_SIDE:I = 0x3

.field public static final whitelist OPLUS_NAVIGATION_BAR_COLOR:I = -0x1

.field public static final whitelist RETRY_COUNT_MAX:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodServiceUtils"

.field private static volatile blacklist sInstance:Landroid/inputmethodservice/OplusInputMethodServiceUtils;


# instance fields
.field private blacklist mInputMethodService:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Landroid/inputmethodservice/OplusInputMethodServiceUtils;->sInstance:Landroid/inputmethodservice/OplusInputMethodServiceUtils;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static whitelist getInstance()Landroid/inputmethodservice/OplusInputMethodServiceUtils;
    .locals 2

    .line 40
    sget-object v0, Landroid/inputmethodservice/OplusInputMethodServiceUtils;->sInstance:Landroid/inputmethodservice/OplusInputMethodServiceUtils;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Landroid/inputmethodservice/OplusInputMethodServiceUtils;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Landroid/inputmethodservice/OplusInputMethodServiceUtils;->sInstance:Landroid/inputmethodservice/OplusInputMethodServiceUtils;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Landroid/inputmethodservice/OplusInputMethodServiceUtils;

    invoke-direct {v1}, Landroid/inputmethodservice/OplusInputMethodServiceUtils;-><init>()V

    sput-object v1, Landroid/inputmethodservice/OplusInputMethodServiceUtils;->sInstance:Landroid/inputmethodservice/OplusInputMethodServiceUtils;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Landroid/inputmethodservice/OplusInputMethodServiceUtils;->sInstance:Landroid/inputmethodservice/OplusInputMethodServiceUtils;

    return-object v0
.end method


# virtual methods
.method public whitelist init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/InputMethodService;

    iput-object v0, p0, Landroid/inputmethodservice/OplusInputMethodServiceUtils;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 53
    return-void
.end method
