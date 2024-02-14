.class public Lcom/oplus/commscene/CommSceneListener;
.super Ljava/lang/Object;
.source "CommSceneListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;
    }
.end annotation


# static fields
.field public static final blacklist EVENT_ENTER:I = 0x1

.field public static final blacklist EVENT_EXIT:I = 0x0

.field public static final blacklist EVENT_NONE:I = -0x1

.field public static final blacklist LISTEN_ALIGN_TICK:I = 0x20

.field public static final blacklist LISTEN_DEEP_DOZE:I = 0x4

.field public static final blacklist LISTEN_DEEP_SLEEP:I = 0x8

.field public static final blacklist LISTEN_LIGHT_DOZE:I = 0x2

.field public static final blacklist LISTEN_MODEM_STATIONARY:I = 0x10

.field public static final blacklist LISTEN_NONE:I = 0x0

.field public static final blacklist LISTEN_SCREEN_ON:I = 0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CommSceneListener"


# instance fields
.field public final greylist mCallback:Lcom/oplus/commscene/ICommSceneListener;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 98
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/commscene/CommSceneListener;-><init>(Landroid/os/Looper;)V

    .line 99
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 107
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Lcom/oplus/commscene/CommSceneListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 108
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "e"    # Ljava/util/concurrent/Executor;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    if-eqz p1, :cond_0

    .line 114
    new-instance v0, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;

    invoke-direct {v0, p0, p1}, Lcom/oplus/commscene/CommSceneListener$ICommSceneListenerStub;-><init>(Lcom/oplus/commscene/CommSceneListener;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/oplus/commscene/CommSceneListener;->mCallback:Lcom/oplus/commscene/ICommSceneListener;

    .line 115
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CommSceneListener Executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist onEvent(III)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "state"    # I
    .param p3, "phoneId"    # I

    .line 126
    return-void
.end method
