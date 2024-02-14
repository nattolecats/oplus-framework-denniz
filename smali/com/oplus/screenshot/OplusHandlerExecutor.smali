.class public Lcom/oplus/screenshot/OplusHandlerExecutor;
.super Ljava/lang/Object;
.source "OplusHandlerExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusHandlerExecutor"


# instance fields
.field private final blacklist mDelayMillis:J

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/screenshot/OplusHandlerExecutor;-><init>(Landroid/os/Handler;J)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .locals 2
    .param p1, "delayMillis"    # J

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/oplus/screenshot/OplusHandlerExecutor;-><init>(Landroid/os/Handler;J)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Handler;J)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "delayMillis"    # J

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/oplus/screenshot/OplusHandlerExecutor;->mHandler:Landroid/os/Handler;

    .line 47
    iput-wide p2, p0, Lcom/oplus/screenshot/OplusHandlerExecutor;->mDelayMillis:J

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 51
    iget-object v0, p0, Lcom/oplus/screenshot/OplusHandlerExecutor;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/oplus/screenshot/OplusHandlerExecutor;->mDelayMillis:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "OplusHandlerExecutor"

    const-string v1, "post command to HandlerExecutor failed!"

    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
