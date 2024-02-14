.class Lcom/oplus/widget/OplusViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "OplusViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/widget/OplusViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/widget/OplusViewPager;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/widget/OplusViewPager;)V
    .locals 0

    .line 3128
    iput-object p1, p0, Lcom/oplus/widget/OplusViewPager$PagerObserver;->this$0:Lcom/oplus/widget/OplusViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/widget/OplusViewPager;Lcom/oplus/widget/OplusViewPager$PagerObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/widget/OplusViewPager$PagerObserver;-><init>(Lcom/oplus/widget/OplusViewPager;)V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .locals 1

    .line 3131
    iget-object v0, p0, Lcom/oplus/widget/OplusViewPager$PagerObserver;->this$0:Lcom/oplus/widget/OplusViewPager;

    invoke-virtual {v0}, Lcom/oplus/widget/OplusViewPager;->dataSetChanged()V

    .line 3132
    return-void
.end method

.method public whitelist onInvalidated()V
    .locals 1

    .line 3135
    iget-object v0, p0, Lcom/oplus/widget/OplusViewPager$PagerObserver;->this$0:Lcom/oplus/widget/OplusViewPager;

    invoke-virtual {v0}, Lcom/oplus/widget/OplusViewPager;->dataSetChanged()V

    .line 3136
    return-void
.end method
