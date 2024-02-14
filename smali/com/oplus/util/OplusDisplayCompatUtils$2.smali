.class Lcom/oplus/util/OplusDisplayCompatUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "OplusDisplayCompatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/util/OplusDisplayCompatUtils;->registerReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/util/OplusDisplayCompatUtils;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/util/OplusDisplayCompatUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/util/OplusDisplayCompatUtils;

    .line 322
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayCompatUtils$2;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 325
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils$2;->this$0:Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-static {v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->-$$Nest$mupdate(Lcom/oplus/util/OplusDisplayCompatUtils;)V

    .line 326
    return-void
.end method
