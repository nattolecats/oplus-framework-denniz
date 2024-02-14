.class Lcom/oplus/resolver/OplusResolverOshare$2;
.super Lcom/oplus/oshare/IOplusOshareInitListener$Stub;
.source "OplusResolverOshare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/resolver/OplusResolverOshare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverOshare;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverOshare;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverOshare;

    .line 195
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-direct {p0}, Lcom/oplus/oshare/IOplusOshareInitListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onShareInit$0$com-oplus-resolver-OplusResolverOshare$2()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mupdateOShareUI(Lcom/oplus/resolver/OplusResolverOshare;Ljava/util/List;)V

    return-void
.end method

.method public whitelist onShareInit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fputmOShareServiceInited(Lcom/oplus/resolver/OplusResolverOshare;Z)V

    .line 208
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/oplus/resolver/OplusResolverOshare$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/oplus/resolver/OplusResolverOshare$2$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/resolver/OplusResolverOshare$2;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareServiceUtil(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/OplusOshareServiceUtil;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmIsOshareApplicationEnable(Lcom/oplus/resolver/OplusResolverOshare;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fputmIsOshareApplicationEnable(Lcom/oplus/resolver/OplusResolverOshare;Z)V

    .line 214
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareServiceUtil(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/OplusOshareServiceUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/oshare/OplusOshareServiceUtil;->switchSend(Z)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareServiceUtil(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/OplusOshareServiceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareCallback(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/IOplusOshareCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/oshare/OplusOshareServiceUtil;->registerCallback(Lcom/oplus/oshare/IOplusOshareCallback;)V

    .line 218
    :cond_2
    return-void
.end method

.method public whitelist onShareUninit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fputmOShareServiceInited(Lcom/oplus/resolver/OplusResolverOshare;Z)V

    .line 200
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareServiceUtil(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/OplusOshareServiceUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareServiceUtil(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/OplusOshareServiceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare$2;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareCallback(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/IOplusOshareCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/oshare/OplusOshareServiceUtil;->unregisterCallback(Lcom/oplus/oshare/IOplusOshareCallback;)V

    .line 203
    :cond_0
    return-void
.end method
