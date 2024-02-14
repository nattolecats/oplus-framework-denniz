.class public Lcom/oplus/wrapper/widget/AbsListView;
.super Ljava/lang/Object;
.source "AbsListView.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AbsListView"


# instance fields
.field private final blacklist mAbsListView:Landroid/widget/AbsListView;


# direct methods
.method public constructor whitelist <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/oplus/wrapper/widget/AbsListView;->mAbsListView:Landroid/widget/AbsListView;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist getTouchMode()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/oplus/wrapper/widget/AbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWrapper()Landroid/widget/IAbsListViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/IAbsListViewWrapper;->getExtImpl()Landroid/widget/IAbsListviewExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/IAbsListviewExt;->getTouchMode()I

    move-result v0

    return v0
.end method

.method public whitelist setFlingMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 67
    iget-object v0, p0, Lcom/oplus/wrapper/widget/AbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWrapper()Landroid/widget/IAbsListViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/IAbsListViewWrapper;->getExtImpl()Landroid/widget/IAbsListviewExt;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/IAbsListviewExt;->setFlingMode(I)V

    .line 68
    return-void
.end method

.method public whitelist startSpringback()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/oplus/wrapper/widget/AbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWrapper()Landroid/widget/IAbsListViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/IAbsListViewWrapper;->getExtImpl()Landroid/widget/IAbsListviewExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/IAbsListviewExt;->startSpringback()V

    .line 59
    return-void
.end method
