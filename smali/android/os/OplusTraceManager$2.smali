.class Landroid/os/OplusTraceManager$2;
.super Ljava/lang/Object;
.source "OplusTraceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/OplusTraceManager;->initAfterBindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/OplusTraceManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/OplusTraceManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/OplusTraceManager;

    .line 352
    iput-object p1, p0, Landroid/os/OplusTraceManager$2;->this$0:Landroid/os/OplusTraceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 6

    .line 355
    invoke-static {}, Landroid/os/OplusTraceManager;->getTraceDurationTimeLimit()J

    move-result-wide v0

    .line 357
    .local v0, "limit":J
    invoke-static {v0, v1}, Landroid/os/OneTraceExtImpl;->updateNativeFilterTime(J)V

    .line 359
    invoke-static {v0, v1}, Landroid/os/OplusTraceManager;->-$$Nest$smnotifyDurationLimitListener(J)V

    .line 361
    iget-object v2, p0, Landroid/os/OplusTraceManager$2;->this$0:Landroid/os/OplusTraceManager;

    invoke-static {v2}, Landroid/os/OplusTraceManager;->-$$Nest$fgetmWorkHandler(Landroid/os/OplusTraceManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x127

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, p0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 363
    return-void
.end method
