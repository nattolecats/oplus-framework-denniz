.class final Lcom/oplus/atlas/OplusMMAtlasService$BinderService;
.super Lcom/oplus/atlas/IOplusMMAtlasService$Stub;
.source "OplusMMAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/atlas/OplusMMAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/atlas/OplusMMAtlasService;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/atlas/OplusMMAtlasService;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-direct {p0}, Lcom/oplus/atlas/IOplusMMAtlasService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist checkIsInDaemonlistByName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 551
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/atlas/OplusMMAtlasService;->checkIsInDaemonlistByName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist checkIsInDaemonlistByUid(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 556
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/atlas/OplusMMAtlasService;->checkIsInDaemonlistByUid(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 571
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/atlas/OplusMMAtlasService;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAttributeByAppUid(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 576
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/atlas/OplusMMAtlasService;->getAttributeByAppUid(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConfigAppList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1}, Lcom/oplus/atlas/OplusMMAtlasService;->getConfigAppList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getListInfoByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/atlas/OplusMMAtlasService;->getListInfoByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getListInfoByAppUid(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 581
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/atlas/OplusMMAtlasService;->getListInfoByAppUid(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageNameByPid(I)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I

    .line 566
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1}, Lcom/oplus/atlas/OplusMMAtlasService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageNameByUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .line 561
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1}, Lcom/oplus/atlas/OplusMMAtlasService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyValuePairs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1}, Lcom/oplus/atlas/OplusMMAtlasService;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist interfaceCallPermissionCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "callPackageName"    # Ljava/lang/String;

    .line 526
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/atlas/OplusMMAtlasService;->interfaceCallPermissionCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerAudioCallback(Lcom/oplus/atlas/IOplusAtlasAudioCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oplus/atlas/IOplusAtlasAudioCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1}, Lcom/oplus/atlas/OplusMMAtlasService;->registerAudioCallback(Lcom/oplus/atlas/IOplusAtlasAudioCallback;)V

    .line 542
    return-void
.end method

.method public whitelist registerCallback(Lcom/oplus/atlas/IOplusAtlasServiceCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oplus/atlas/IOplusAtlasServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1}, Lcom/oplus/atlas/OplusMMAtlasService;->registerCallback(Lcom/oplus/atlas/IOplusAtlasServiceCallback;)V

    .line 532
    return-void
.end method

.method public whitelist setEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/atlas/OplusMMAtlasService;->setEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public whitelist setEventToNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/atlas/OplusMMAtlasService;->setEventToNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public whitelist setParameters(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyValuePairs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1}, Lcom/oplus/atlas/OplusMMAtlasService;->setParameters(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public whitelist unRegisterAudioCallback(Lcom/oplus/atlas/IOplusAtlasAudioCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oplus/atlas/IOplusAtlasAudioCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1}, Lcom/oplus/atlas/OplusMMAtlasService;->unRegisterAudioCallback(Lcom/oplus/atlas/IOplusAtlasAudioCallback;)V

    .line 547
    return-void
.end method

.method public whitelist unRegisterCallback(Lcom/oplus/atlas/IOplusAtlasServiceCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oplus/atlas/IOplusAtlasServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService$BinderService;->this$0:Lcom/oplus/atlas/OplusMMAtlasService;

    invoke-virtual {v0, p1}, Lcom/oplus/atlas/OplusMMAtlasService;->unRegisterCallback(Lcom/oplus/atlas/IOplusAtlasServiceCallback;)V

    .line 537
    return-void
.end method
