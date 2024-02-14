.class public Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;
.super Ljava/lang/Object;
.source "FwkCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/multisearch/FwkCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowContainerTransactionWrapper"
.end annotation


# instance fields
.field private blacklist mDelegate:Landroid/window/WindowContainerTransaction;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iput-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;->mDelegate:Landroid/window/WindowContainerTransaction;

    .line 225
    return-void
.end method


# virtual methods
.method public blacklist getWindowContainerTransaction()Landroid/window/WindowContainerTransaction;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;->mDelegate:Landroid/window/WindowContainerTransaction;

    return-object v0
.end method

.method public whitelist setBounds(Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;Landroid/graphics/Rect;)Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;
    .locals 2
    .param p1, "windowContainerToken"    # Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 235
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;->mDelegate:Landroid/window/WindowContainerTransaction;

    invoke-virtual {p1}, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;->getWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 236
    return-object p0
.end method

.method public whitelist setFocusable(Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;Z)Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;
    .locals 2
    .param p1, "windowContainerToken"    # Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;
    .param p2, "focusable"    # Z

    .line 240
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;->mDelegate:Landroid/window/WindowContainerTransaction;

    invoke-virtual {p1}, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;->getWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/window/WindowContainerTransaction;->setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 241
    return-object p0
.end method

.method public whitelist setHidden(Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;Z)Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;
    .locals 2
    .param p1, "windowContainerToken"    # Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;
    .param p2, "hidden"    # Z

    .line 245
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTransactionWrapper;->mDelegate:Landroid/window/WindowContainerTransaction;

    invoke-virtual {p1}, Lcom/oplus/compat/multisearch/FwkCompat$WindowContainerTokenWrapper;->getWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/window/WindowContainerTransaction;->setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 246
    return-object p0
.end method
