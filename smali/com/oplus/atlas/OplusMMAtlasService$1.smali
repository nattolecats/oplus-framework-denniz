.class Lcom/oplus/atlas/OplusMMAtlasService$1;
.super Landroid/content/BroadcastReceiver;
.source "OplusMMAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/atlas/OplusMMAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/atlas/OplusMMAtlasService;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/atlas/OplusMMAtlasService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/atlas/OplusMMAtlasService;

    .line 168
    iput-object p1, p0, Lcom/oplus/atlas/OplusMMAtlasService$1;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCommonReceiver action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusMMAtlasService"

    invoke-static {v2, v1}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v1, "com.oplus.atlas.OplusAtlasService.STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/oplus/atlas/OplusMMAtlasService$1;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-static {v1}, Lcom/oplus/atlas/OplusMMAtlasService;->-$$Nest$mbindAtlasService(Lcom/oplus/atlas/OplusMMAtlasService;)V

    .line 176
    :cond_0
    return-void
.end method
