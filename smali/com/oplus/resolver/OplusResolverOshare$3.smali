.class Lcom/oplus/resolver/OplusResolverOshare$3;
.super Lcom/oplus/oshare/IOplusOshareCallback$Stub;
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

    .line 221
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-direct {p0}, Lcom/oplus/oshare/IOplusOshareCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onDeviceChanged$0$com-oplus-resolver-OplusResolverOshare$3(Ljava/util/List;)V
    .locals 2
    .param p1, "deviceList"    # Ljava/util/List;

    .line 228
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0, p1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mupdateOShareUI(Lcom/oplus/resolver/OplusResolverOshare;Ljava/util/List;)V

    .line 229
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mcheckCanUpdateDeviceList(Lcom/oplus/resolver/OplusResolverOshare;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "update device list"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmResolverOshareingAdapter(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->notifyDeviceListChange(Ljava/util/List;)V

    .line 232
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fputmPendingDeviceList(Lcom/oplus/resolver/OplusResolverOshare;Ljava/util/List;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "record pending device list"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0, p1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fputmPendingDeviceList(Lcom/oplus/resolver/OplusResolverOshare;Ljava/util/List;)V

    .line 237
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$onSendSwitchChanged$1$com-oplus-resolver-OplusResolverOshare$3()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmResolverOshareingAdapter(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmResolverOshareingAdapter(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->-$$Nest$fgetmDeviceList(Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    .line 244
    :goto_0
    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mupdateOShareUI(Lcom/oplus/resolver/OplusResolverOshare;Ljava/util/List;)V

    return-void
.end method

.method public whitelist onDeviceChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/oshare/OplusOshareDevice;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    .local p1, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/oshare/OplusOshareDevice;>;"
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "receiver onDeviceChanged"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/oplus/resolver/OplusResolverOshare$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/oplus/resolver/OplusResolverOshare$3$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/resolver/OplusResolverOshare$3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    :cond_0
    return-void
.end method

.method public whitelist onSendSwitchChanged(Z)V
    .locals 2
    .param p1, "isOn"    # Z

    .line 242
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "onSendSwitchChanged"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/oplus/resolver/OplusResolverOshare$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/oplus/resolver/OplusResolverOshare$3$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/resolver/OplusResolverOshare$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$3;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmHandler(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    return-void
.end method
