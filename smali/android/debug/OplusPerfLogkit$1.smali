.class Landroid/debug/OplusPerfLogkit$1;
.super Landroid/content/BroadcastReceiver;
.source "OplusPerfLogkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/debug/OplusPerfLogkit;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/debug/OplusPerfLogkit;


# direct methods
.method constructor blacklist <init>(Landroid/debug/OplusPerfLogkit;)V
    .locals 0
    .param p1, "this$0"    # Landroid/debug/OplusPerfLogkit;

    .line 49
    iput-object p1, p0, Landroid/debug/OplusPerfLogkit$1;->this$0:Landroid/debug/OplusPerfLogkit;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 52
    iget-object v0, p0, Landroid/debug/OplusPerfLogkit$1;->this$0:Landroid/debug/OplusPerfLogkit;

    const-string v1, "finger.screenshot"

    invoke-static {v0, v1}, Landroid/debug/OplusPerfLogkit;->-$$Nest$mdumpTrace(Landroid/debug/OplusPerfLogkit;Ljava/lang/String;)V

    .line 53
    return-void
.end method
