.class Lcom/oplus/compat/multisearch/FwkCompat$1;
.super Ljava/lang/Object;
.source "FwkCompat.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/multisearch/FwkCompat;->addOnComputeInternalInsetsListener(Landroid/view/View;Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/compat/multisearch/FwkCompat;

.field final synthetic blacklist val$listener:Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/compat/multisearch/FwkCompat;Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/compat/multisearch/FwkCompat;

    .line 127
    iput-object p1, p0, Lcom/oplus/compat/multisearch/FwkCompat$1;->this$0:Lcom/oplus/compat/multisearch/FwkCompat;

    iput-object p2, p0, Lcom/oplus/compat/multisearch/FwkCompat$1;->val$listener:Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 130
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$1;->val$listener:Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;

    new-instance v1, Lcom/oplus/compat/multisearch/FwkCompat$InternalInsetsInfoWrapper;

    invoke-direct {v1, p1}, Lcom/oplus/compat/multisearch/FwkCompat$InternalInsetsInfoWrapper;-><init>(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    invoke-interface {v0, v1}, Lcom/oplus/compat/multisearch/FwkCompat$OnComputeInternalInsetsListenerWrapper;->onComputeInternalInsets(Lcom/oplus/compat/multisearch/FwkCompat$InternalInsetsInfoWrapper;)V

    .line 131
    return-void
.end method
