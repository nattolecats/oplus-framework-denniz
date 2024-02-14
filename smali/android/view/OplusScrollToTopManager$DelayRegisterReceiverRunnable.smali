.class Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;
.super Ljava/lang/Object;
.source "OplusScrollToTopManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusScrollToTopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayRegisterReceiverRunnable"
.end annotation


# instance fields
.field private blacklist mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasFocus:Z

.field final synthetic blacklist this$0:Landroid/view/OplusScrollToTopManager;


# direct methods
.method private constructor blacklist <init>(Landroid/view/OplusScrollToTopManager;)V
    .locals 0

    .line 621
    iput-object p1, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/OplusScrollToTopManager;Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;-><init>(Landroid/view/OplusScrollToTopManager;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 632
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v0}, Landroid/view/OplusScrollToTopManager;->-$$Nest$fgetmIsDying(Landroid/view/OplusScrollToTopManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    return-void

    .line 636
    :cond_0
    const/4 v0, 0x0

    .line 637
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 638
    iget-object v1, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    .line 644
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    iget-boolean v1, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->mHasFocus:Z

    if-eqz v1, :cond_4

    .line 647
    iget-object v1, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v1, v0}, Landroid/view/OplusScrollToTopManager;->-$$Nest$mregisterGuidePopupDismissReceiverInSystemUI(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;)V

    goto :goto_0

    .line 651
    :cond_1
    iget-object v1, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v1, v0}, Landroid/view/OplusScrollToTopManager;->-$$Nest$misInWhiteList(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 652
    return-void

    .line 655
    :cond_2
    iget-object v1, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v1, v0}, Landroid/view/OplusScrollToTopManager;->-$$Nest$mrefreshGuidePopup(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;)V

    .line 656
    iget-boolean v1, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->mHasFocus:Z

    if-eqz v1, :cond_3

    .line 657
    iget-object v1, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v1, v0}, Landroid/view/OplusScrollToTopManager;->-$$Nest$mregisterSystemUIBroadcastReceiver(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;)V

    goto :goto_0

    .line 659
    :cond_3
    iget-object v1, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v1, v0}, Landroid/view/OplusScrollToTopManager;->-$$Nest$munregisterSystemUIBroadcastReceiver(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;)V

    .line 662
    :cond_4
    :goto_0
    return-void

    .line 640
    :cond_5
    iget-object v1, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->this$0:Landroid/view/OplusScrollToTopManager;

    const-string v2, "lost mContextRef , failed to execute DelayRegisterReceiverRunnable"

    invoke-static {v1, v2}, Landroid/view/OplusScrollToTopManager;->-$$Nest$mlog(Landroid/view/OplusScrollToTopManager;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public blacklist setParams(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasFocus"    # Z

    .line 626
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 627
    iput-boolean p2, p0, Landroid/view/OplusScrollToTopManager$DelayRegisterReceiverRunnable;->mHasFocus:Z

    .line 628
    return-void
.end method
