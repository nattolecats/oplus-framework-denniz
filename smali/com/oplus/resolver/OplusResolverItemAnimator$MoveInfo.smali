.class Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "OplusResolverItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/resolver/OplusResolverItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public blacklist fromX:I

.field public blacklist fromY:I

.field public blacklist holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field public blacklist toX:I

.field public blacklist toY:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 72
    iput p2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->fromX:I

    .line 73
    iput p3, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->fromY:I

    .line 74
    iput p4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->toX:I

    .line 75
    iput p5, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->toY:I

    .line 76
    return-void
.end method
