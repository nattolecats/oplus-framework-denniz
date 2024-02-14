.class Landroid/view/OplusScrollToTopManager$1;
.super Landroid/content/BroadcastReceiver;
.source "OplusScrollToTopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusScrollToTopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/OplusScrollToTopManager;


# direct methods
.method constructor blacklist <init>(Landroid/view/OplusScrollToTopManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/OplusScrollToTopManager;

    .line 99
    iput-object p1, p0, Landroid/view/OplusScrollToTopManager$1;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Landroid/view/OplusScrollToTopManager$1;->this$0:Landroid/view/OplusScrollToTopManager;

    invoke-static {v0, p1, p2}, Landroid/view/OplusScrollToTopManager;->-$$Nest$mguidePopupHasDismissed(Landroid/view/OplusScrollToTopManager;Landroid/content/Context;Landroid/content/Intent;)V

    .line 103
    return-void
.end method
