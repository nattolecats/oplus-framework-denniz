.class Lcom/oplus/resolver/OplusResolverOshare$EmptyViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "OplusResolverOshare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/resolver/OplusResolverOshare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyViewHolder"
.end annotation


# static fields
.field public static final blacklist EMPTY_TYPE:I = -0x1


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 676
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 677
    return-void
.end method
