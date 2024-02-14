.class Lcom/oplus/widget/OplusViewPager$2;
.super Ljava/lang/Object;
.source "OplusViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/widget/OplusViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/widget/OplusViewPager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/widget/OplusViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/widget/OplusViewPager;

    .line 252
    iput-object p1, p0, Lcom/oplus/widget/OplusViewPager$2;->this$0:Lcom/oplus/widget/OplusViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/oplus/widget/OplusViewPager$2;->this$0:Lcom/oplus/widget/OplusViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/widget/OplusViewPager;->-$$Nest$msetScrollState(Lcom/oplus/widget/OplusViewPager;I)V

    .line 255
    iget-object v0, p0, Lcom/oplus/widget/OplusViewPager$2;->this$0:Lcom/oplus/widget/OplusViewPager;

    invoke-virtual {v0}, Lcom/oplus/widget/OplusViewPager;->populate()V

    .line 256
    return-void
.end method
