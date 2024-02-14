.class Landroid/view/OplusLongshotViewDump$MainThreadExecutor;
.super Ljava/lang/Object;
.source "OplusLongshotViewDump.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusLongshotViewDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadExecutor"
.end annotation


# instance fields
.field private final blacklist mDelayMillis:J

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method private constructor blacklist <init>(Landroid/os/Handler;J)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "delayMillis"    # J

    .line 1407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1408
    iput-object p1, p0, Landroid/view/OplusLongshotViewDump$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    .line 1409
    iput-wide p2, p0, Landroid/view/OplusLongshotViewDump$MainThreadExecutor;->mDelayMillis:J

    .line 1410
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Handler;JLandroid/view/OplusLongshotViewDump$MainThreadExecutor-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/OplusLongshotViewDump$MainThreadExecutor;-><init>(Landroid/os/Handler;J)V

    return-void
.end method


# virtual methods
.method public whitelist test-api execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 1414
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Landroid/view/OplusLongshotViewDump$MainThreadExecutor;->mDelayMillis:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1415
    invoke-static {}, Landroid/view/OplusLongshotViewDump;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "LongshotDump"

    const-string v2, "post command to MainThreadExecutor failed!"

    invoke-static {v0, v1, v2}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1417
    :cond_0
    return-void
.end method
