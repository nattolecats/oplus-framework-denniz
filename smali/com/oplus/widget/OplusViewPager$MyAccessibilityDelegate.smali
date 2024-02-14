.class Lcom/oplus/widget/OplusViewPager$MyAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "OplusViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/widget/OplusViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/widget/OplusViewPager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/widget/OplusViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/widget/OplusViewPager;

    .line 3080
    iput-object p1, p0, Lcom/oplus/widget/OplusViewPager$MyAccessibilityDelegate;->this$0:Lcom/oplus/widget/OplusViewPager;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method private blacklist canScroll()Z
    .locals 2

    .line 3124
    iget-object v0, p0, Lcom/oplus/widget/OplusViewPager$MyAccessibilityDelegate;->this$0:Lcom/oplus/widget/OplusViewPager;

    invoke-static {v0}, Lcom/oplus/widget/OplusViewPager;->-$$Nest$fgetmAdapter(Lcom/oplus/widget/OplusViewPager;)Lcom/oplus/widget/OplusPagerAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/widget/OplusViewPager$MyAccessibilityDelegate;->this$0:Lcom/oplus/widget/OplusViewPager;

    invoke-static {v0}, Lcom/oplus/widget/OplusViewPager;->-$$Nest$fgetmAdapter(Lcom/oplus/widget/OplusViewPager;)Lcom/oplus/widget/OplusPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/widget/OplusPagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public whitelist onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3084
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3085
    const-class v0, Lcom/oplus/widget/OplusViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3086
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3090
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3091
    const-class v0, Lcom/oplus/widget/OplusViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3092
    invoke-direct {p0}, Lcom/oplus/widget/OplusViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 3093
    iget-object v0, p0, Lcom/oplus/widget/OplusViewPager$MyAccessibilityDelegate;->this$0:Lcom/oplus/widget/OplusViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/widget/OplusViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3094
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3096
    :cond_0
    iget-object v0, p0, Lcom/oplus/widget/OplusViewPager$MyAccessibilityDelegate;->this$0:Lcom/oplus/widget/OplusViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/widget/OplusViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3097
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3099
    :cond_1
    return-void
.end method

.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 3103
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3104
    return v1

    .line 3106
    :cond_0
    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    .line 3120
    return v0

    .line 3114
    :sswitch_0
    iget-object v2, p0, Lcom/oplus/widget/OplusViewPager$MyAccessibilityDelegate;->this$0:Lcom/oplus/widget/OplusViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oplus/widget/OplusViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3115
    iget-object v0, p0, Lcom/oplus/widget/OplusViewPager$MyAccessibilityDelegate;->this$0:Lcom/oplus/widget/OplusViewPager;

    invoke-static {v0}, Lcom/oplus/widget/OplusViewPager;->-$$Nest$fgetmCurItem(Lcom/oplus/widget/OplusViewPager;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/oplus/widget/OplusViewPager;->setCurrentItem(I)V

    .line 3116
    return v1

    .line 3118
    :cond_1
    return v0

    .line 3108
    :sswitch_1
    iget-object v2, p0, Lcom/oplus/widget/OplusViewPager$MyAccessibilityDelegate;->this$0:Lcom/oplus/widget/OplusViewPager;

    invoke-virtual {v2, v1}, Lcom/oplus/widget/OplusViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3109
    iget-object v0, p0, Lcom/oplus/widget/OplusViewPager$MyAccessibilityDelegate;->this$0:Lcom/oplus/widget/OplusViewPager;

    invoke-static {v0}, Lcom/oplus/widget/OplusViewPager;->-$$Nest$fgetmCurItem(Lcom/oplus/widget/OplusViewPager;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/oplus/widget/OplusViewPager;->setCurrentItem(I)V

    .line 3110
    return v1

    .line 3112
    :cond_2
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method
