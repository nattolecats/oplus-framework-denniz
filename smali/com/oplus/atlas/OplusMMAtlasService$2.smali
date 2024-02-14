.class Lcom/oplus/atlas/OplusMMAtlasService$2;
.super Ljava/lang/Object;
.source "OplusMMAtlasService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 230
    iput-object p1, p0, Lcom/oplus/atlas/OplusMMAtlasService$2;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 233
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$2;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-static {p2}, Lcom/oplus/atlas/IOplusAtlasService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/atlas/OplusMMAtlasService;->-$$Nest$fputmOplusAtlasService(Lcom/oplus/atlas/OplusMMAtlasService;Lcom/oplus/atlas/IOplusAtlasService;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected mOplusAtlasService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/atlas/OplusMMAtlasService$2;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-static {v1}, Lcom/oplus/atlas/OplusMMAtlasService;->-$$Nest$fgetmOplusAtlasService(Lcom/oplus/atlas/OplusMMAtlasService;)Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusMMAtlasService"

    invoke-static {v1, v0}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$2;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/atlas/OplusMMAtlasService;->-$$Nest$fputmBindServiceFlag(Lcom/oplus/atlas/OplusMMAtlasService;Z)V

    .line 236
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 240
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$2;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/atlas/OplusMMAtlasService;->-$$Nest$fputmOplusAtlasService(Lcom/oplus/atlas/OplusMMAtlasService;Lcom/oplus/atlas/IOplusAtlasService;)V

    .line 241
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$2;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/atlas/OplusMMAtlasService;->-$$Nest$fputmBindServiceFlag(Lcom/oplus/atlas/OplusMMAtlasService;Z)V

    .line 242
    const-string v0, "OplusMMAtlasService"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method
