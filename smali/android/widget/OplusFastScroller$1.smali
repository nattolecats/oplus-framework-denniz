.class Landroid/widget/OplusFastScroller$1;
.super Ljava/lang/Object;
.source "OplusFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OplusFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/OplusFastScroller;


# direct methods
.method constructor blacklist <init>(Landroid/widget/OplusFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/OplusFastScroller;

    .line 300
    iput-object p1, p0, Landroid/widget/OplusFastScroller$1;->this$0:Landroid/widget/OplusFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 304
    iget-object v0, p0, Landroid/widget/OplusFastScroller$1;->this$0:Landroid/widget/OplusFastScroller;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/widget/OplusFastScroller;->-$$Nest$msetState(Landroid/widget/OplusFastScroller;I)V

    .line 305
    return-void
.end method
