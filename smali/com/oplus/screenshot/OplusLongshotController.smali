.class public abstract Lcom/oplus/screenshot/OplusLongshotController;
.super Ljava/lang/Object;
.source "OplusLongshotController.java"

# interfaces
.implements Lcom/oplus/screenshot/IOplusLongshotController;


# instance fields
.field final blacklist mSource:Ljava/lang/String;

.field final blacklist mViewBase:Lcom/oplus/screenshot/OplusLongshotViewBase;


# direct methods
.method public constructor whitelist <init>(Lcom/oplus/screenshot/OplusLongshotViewBase;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/oplus/screenshot/OplusLongshotViewBase;
    .param p2, "source"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/oplus/screenshot/OplusLongshotController;->mViewBase:Lcom/oplus/screenshot/OplusLongshotViewBase;

    .line 40
    iput-object p2, p0, Lcom/oplus/screenshot/OplusLongshotController;->mSource:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private blacklist findUnsupported(Lcom/oplus/screenshot/OplusLongshotViewInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/oplus/screenshot/OplusLongshotViewInfo;

    .line 56
    iget-object v0, p0, Lcom/oplus/screenshot/OplusLongshotController;->mViewBase:Lcom/oplus/screenshot/OplusLongshotViewBase;

    instance-of v1, v0, Landroid/view/IViewExt;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Landroid/view/IViewExt;

    .line 58
    .local v0, "viewExt":Landroid/view/IViewExt;
    invoke-interface {v0}, Landroid/view/IViewExt;->getView()Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/oplus/screenshot/OplusLongshotUnsupported;

    if-eqz v2, :cond_0

    .line 60
    move-object v2, v1

    check-cast v2, Lcom/oplus/screenshot/OplusLongshotUnsupported;

    .line 61
    .local v2, "mView":Lcom/oplus/screenshot/OplusLongshotUnsupported;
    invoke-interface {v2}, Lcom/oplus/screenshot/OplusLongshotUnsupported;->isLongshotUnsupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/oplus/screenshot/OplusLongshotViewInfo;->setUnsupported()V

    .line 66
    .end local v0    # "viewExt":Landroid/view/IViewExt;
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "mView":Lcom/oplus/screenshot/OplusLongshotUnsupported;
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist findInfo(Lcom/oplus/screenshot/OplusLongshotViewInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/oplus/screenshot/OplusLongshotViewInfo;

    .line 47
    invoke-direct {p0, p1}, Lcom/oplus/screenshot/OplusLongshotController;->findUnsupported(Lcom/oplus/screenshot/OplusLongshotViewInfo;)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method
