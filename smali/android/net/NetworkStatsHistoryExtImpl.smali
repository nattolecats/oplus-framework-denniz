.class public Landroid/net/NetworkStatsHistoryExtImpl;
.super Ljava/lang/Object;
.source "NetworkStatsHistoryExtImpl.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist hookRecordHistory(JJ)J
    .locals 2
    .param p0, "val"    # J
    .param p2, "def"    # J

    .line 23
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method
