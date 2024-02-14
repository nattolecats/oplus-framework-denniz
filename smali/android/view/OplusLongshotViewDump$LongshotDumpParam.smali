.class Landroid/view/OplusLongshotViewDump$LongshotDumpParam;
.super Ljava/lang/Object;
.source "OplusLongshotViewDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusLongshotViewDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongshotDumpParam"
.end annotation


# instance fields
.field blacklist mDelay:J

.field blacklist mExtras:Landroid/os/Bundle;

.field blacklist mIsDumpScrollCapture:Z

.field blacklist mIsScrollReset:Z


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    .line 1420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1421
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mIsDumpScrollCapture:Z

    .line 1422
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mIsScrollReset:Z

    .line 1423
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mDelay:J

    .line 1424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/OplusLongshotViewDump$LongshotDumpParam-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/OplusLongshotViewDump$LongshotDumpParam;-><init>()V

    return-void
.end method
