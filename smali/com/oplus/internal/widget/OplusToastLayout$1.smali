.class Lcom/oplus/internal/widget/OplusToastLayout$1;
.super Landroid/view/ViewOutlineProvider;
.source "OplusToastLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/internal/widget/OplusToastLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/internal/widget/OplusToastLayout;

.field final synthetic blacklist val$cornerSize:I


# direct methods
.method constructor blacklist <init>(Lcom/oplus/internal/widget/OplusToastLayout;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/internal/widget/OplusToastLayout;

    .line 133
    iput-object p1, p0, Lcom/oplus/internal/widget/OplusToastLayout$1;->this$0:Lcom/oplus/internal/widget/OplusToastLayout;

    iput p2, p0, Lcom/oplus/internal/widget/OplusToastLayout$1;->val$cornerSize:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 136
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/oplus/internal/widget/OplusToastLayout$1;->val$cornerSize:I

    int-to-float v6, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 138
    return-void
.end method
