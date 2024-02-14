.class public Lcom/oplus/screenshot/OplusLongshotCustomController;
.super Lcom/oplus/screenshot/OplusLongshotController;
.source "OplusLongshotCustomController.java"


# instance fields
.field private final blacklist mScreenshotManager:Lcom/oplus/screenshot/OplusScreenshotManager;


# direct methods
.method public constructor whitelist <init>(Lcom/oplus/screenshot/OplusLongshotViewBase;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/oplus/screenshot/OplusLongshotViewBase;
    .param p2, "source"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/oplus/screenshot/OplusLongshotController;-><init>(Lcom/oplus/screenshot/OplusLongshotViewBase;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lcom/oplus/screenshot/OplusLongshotViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/screenshot/OplusLongshotUtils;->getScreenshotManager(Landroid/content/Context;)Lcom/oplus/screenshot/OplusScreenshotManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/screenshot/OplusLongshotCustomController;->mScreenshotManager:Lcom/oplus/screenshot/OplusScreenshotManager;

    .line 39
    return-void
.end method

.method private blacklist canLongshot()Z
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/oplus/screenshot/OplusLongshotCustomController;->mViewBase:Lcom/oplus/screenshot/OplusLongshotViewBase;

    .line 56
    .local v0, "view":Lcom/oplus/screenshot/OplusLongshotViewBase;
    invoke-interface {v0}, Lcom/oplus/screenshot/OplusLongshotViewBase;->computeLongScrollOffset()I

    move-result v1

    .line 57
    .local v1, "offset":I
    invoke-interface {v0}, Lcom/oplus/screenshot/OplusLongshotViewBase;->computeLongScrollRange()I

    move-result v2

    invoke-interface {v0}, Lcom/oplus/screenshot/OplusLongshotViewBase;->computeLongScrollExtent()I

    move-result v3

    sub-int/2addr v2, v3

    .line 58
    .local v2, "range":I
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 59
    return v3

    .line 61
    :cond_0
    if-lez v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method


# virtual methods
.method public whitelist onLongScroll()V
    .locals 4

    .line 45
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusLongshotCustomController;->canLongshot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/oplus/screenshot/OplusLongshotEvent;

    iget-object v1, p0, Lcom/oplus/screenshot/OplusLongshotCustomController;->mViewBase:Lcom/oplus/screenshot/OplusLongshotViewBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/screenshot/OplusLongshotEvent;-><init>(Ljava/lang/String;IZ)V

    .line 47
    .local v0, "event":Lcom/oplus/screenshot/OplusLongshotEvent;
    iget-object v1, p0, Lcom/oplus/screenshot/OplusLongshotCustomController;->mScreenshotManager:Lcom/oplus/screenshot/OplusScreenshotManager;

    invoke-virtual {v1, v0}, Lcom/oplus/screenshot/OplusScreenshotManager;->notifyOverScroll(Lcom/oplus/screenshot/OplusLongshotEvent;)V

    .line 49
    .end local v0    # "event":Lcom/oplus/screenshot/OplusLongshotEvent;
    :cond_0
    return-void
.end method
