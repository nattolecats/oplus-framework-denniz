.class Landroid/app/dialog/AlertControllerExt$4;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/dialog/AlertControllerExt;->relayoutMessageView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/dialog/AlertControllerExt;


# direct methods
.method constructor blacklist <init>(Landroid/app/dialog/AlertControllerExt;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/dialog/AlertControllerExt;

    .line 261
    iput-object p1, p0, Landroid/app/dialog/AlertControllerExt$4;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGlobalLayout()V
    .locals 3

    .line 264
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt$4;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v0}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmMessageView(Landroid/app/dialog/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 265
    .local v0, "lineCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 266
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt$4;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v1}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmMessageView(Landroid/app/dialog/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt$4;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v1}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmMessageView(Landroid/app/dialog/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 270
    :goto_0
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt$4;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v1}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmMessageView(Landroid/app/dialog/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroid/app/dialog/AlertControllerExt$4;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v2}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmMessageView(Landroid/app/dialog/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v1, p0, Landroid/app/dialog/AlertControllerExt$4;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v1}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmMessageView(Landroid/app/dialog/AlertControllerExt;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 272
    return-void
.end method
