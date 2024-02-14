.class Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;
.super Lcom/android/internal/widget/RecyclerView$ItemDecoration;
.source "OplusResolverPagerAdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->createPagerView(Ljava/util/List;II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

.field final synthetic blacklist val$padding:I


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    .line 104
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    iput p2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;->val$padding:I

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p4, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;)V

    .line 108
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 109
    .local v0, "position":I
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v2}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmColumnSize(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 111
    const v2, 0xc0500c8

    goto :goto_0

    .line 112
    :cond_0
    const v2, 0xc0500c9

    .line 110
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 113
    .local v1, "itemWidth":I
    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    .line 114
    .local v2, "width":I
    int-to-double v3, v2

    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v5}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmColumnSize(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)I

    move-result v5

    mul-int/2addr v5, v1

    int-to-double v5, v5

    sub-double/2addr v3, v5

    iget v5, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;->val$padding:I

    mul-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    sub-double/2addr v3, v5

    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v5}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmColumnSize(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)I

    move-result v5

    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v6}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmColumnSize(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    int-to-double v5, v5

    div-double/2addr v3, v5

    .line 115
    .local v3, "w":D
    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v5}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmColumnSize(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)I

    move-result v5

    rem-int v5, v0, v5

    .line 116
    .local v5, "p":I
    invoke-virtual {p3}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 117
    int-to-double v6, v5

    mul-double/2addr v6, v3

    double-to-int v6, v6

    iput v6, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 119
    :cond_1
    int-to-double v6, v5

    mul-double/2addr v6, v3

    double-to-int v6, v6

    iput v6, p1, Landroid/graphics/Rect;->left:I

    .line 121
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",itemWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",p="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",outRect.left="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "padding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;->val$padding:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OplusResolverPagerAdapterHelper"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method
