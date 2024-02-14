.class public Lcom/oplus/wrapper/view/View;
.super Ljava/lang/Object;
.source "View.java"


# instance fields
.field private final blacklist mView:Landroid/view/View;


# direct methods
.method public constructor whitelist <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/oplus/wrapper/view/View;->mView:Landroid/view/View;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist isVisibleToUser()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oplus/wrapper/view/View;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method public whitelist requestAccessibilityFocus()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/oplus/wrapper/view/View;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    move-result v0

    return v0
.end method
