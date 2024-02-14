.class Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OplusPreloadSpalshRUSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver;->this$0:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver;-><init>(Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    const-string v1, "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "ROM_UPDATE_CONFIG_LIST"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 101
    .local v1, "changeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    const-string v2, "sys_opti_preload_splash_config"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver;->this$0:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;

    invoke-static {v2}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->-$$Nest$fgetmHandler(Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$UpdateReceiver;->this$0:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;

    invoke-static {v3}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->-$$Nest$fgetmHandler(Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;)Landroid/os/Handler;

    move-result-object v3

    const v4, 0x700001

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    const-string v2, "OplusPreloadSpalshRUSHelper"

    const-string v3, "ACTION_ROM_UPDATE_CONFIG_SUCCES"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v1    # "changeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
