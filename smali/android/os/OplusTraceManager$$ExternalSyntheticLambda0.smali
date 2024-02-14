.class public final synthetic Landroid/os/OplusTraceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:J


# direct methods
.method public synthetic constructor blacklist <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Landroid/os/OplusTraceManager$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Landroid/os/OplusTraceManager$OnDurationLimitChangedListener;

    invoke-static {v0, v1, p1}, Landroid/os/OplusTraceManager;->lambda$notifyDurationLimitListener$5(JLandroid/os/OplusTraceManager$OnDurationLimitChangedListener;)V

    return-void
.end method
