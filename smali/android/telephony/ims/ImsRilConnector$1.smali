.class Landroid/telephony/ims/ImsRilConnector$1;
.super Ljava/lang/Object;
.source "ImsRilConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsRilConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/ImsRilConnector;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/ImsRilConnector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/ImsRilConnector;

    .line 190
    iput-object p1, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNullBinding componentName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRilConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRilConnector;->unbindImsRilService()V

    .line 263
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v0}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmConnectionRetryHandler(Landroid/telephony/ims/ImsRilConnector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 265
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "b"    # Landroid/os/IBinder;

    .line 194
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {p2}, Landroid/telephony/ims/aidl/IImsRil$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRil;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fputmImsRil(Landroid/telephony/ims/ImsRilConnector;Landroid/telephony/ims/aidl/IImsRil;)V

    .line 195
    const-string v0, "ImsRilConnector"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmImsRil(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/aidl/IImsRil;

    move-result-object v1

    if-nez v1, :cond_0

    .line 197
    const-string v1, "QtiImsExtService is not running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    new-instance v2, Landroid/telephony/ims/ImsRilManager;

    invoke-static {v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmContext(Landroid/telephony/ims/ImsRilConnector;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v4}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmImsRil(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/aidl/IImsRil;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsRilManager;-><init>(Landroid/content/Context;Landroid/telephony/ims/aidl/IImsRil;)V

    invoke-static {v1, v2}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fputmRilMgr(Landroid/telephony/ims/ImsRilConnector;Landroid/telephony/ims/ImsRilManager;)V

    .line 204
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmRilMgr(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/ImsRilManager;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v2}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmImsRil(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/aidl/IImsRil;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsRil;->getIImsExtBinder()Lcom/oplus/ims/IImsExt;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsRilManager;->setImsExt(Lcom/oplus/ims/IImsExt;)V

    .line 205
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/ImsRilConnector$IListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/ImsRilConnector$IListener;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v2}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmRilMgr(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/ImsRilManager;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/telephony/ims/ImsRilConnector$IListener;->onConnectionAvailable(Landroid/telephony/ims/ImsRilManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_1
    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ImsExt is not running"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmNeedCallback(Landroid/telephony/ims/ImsRilConnector;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmImsRilInd(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/aidl/IImsRilInd;

    move-result-object v1

    if-nez v1, :cond_2

    .line 217
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    new-instance v2, Landroid/telephony/ims/ImsRilConnector$1$1;

    invoke-direct {v2, p0}, Landroid/telephony/ims/ImsRilConnector$1$1;-><init>(Landroid/telephony/ims/ImsRilConnector$1;)V

    invoke-static {v1, v2}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fputmImsRilInd(Landroid/telephony/ims/ImsRilConnector;Landroid/telephony/ims/aidl/IImsRilInd;)V

    .line 228
    :cond_2
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmRilMgr(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/ImsRilManager;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v2}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmImsRilInd(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/aidl/IImsRilInd;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsRilManager;->registerIndication(Landroid/telephony/ims/aidl/IImsRilInd;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    goto :goto_1

    .line 229
    :catch_1
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerIndication "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fputmIsBinderAvailable(Landroid/telephony/ims/ImsRilConnector;Z)V

    .line 234
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fputmRetryCount(Landroid/telephony/ims/ImsRilConnector;I)V

    .line 236
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/ImsRilConnector$IListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRilConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v0}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/ImsRilConnector$IListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v0}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmListener(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/ImsRilConnector$IListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/ImsRilConnector$IListener;->onConnectionUnavailable()V

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v0}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmNeedCallback(Landroid/telephony/ims/ImsRilConnector;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v0}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmRilMgr(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/ImsRilManager;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v2}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmImsRilInd(Landroid/telephony/ims/ImsRilConnector;)Landroid/telephony/ims/aidl/IImsRilInd;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsRilManager;->unRegisterIndication(Landroid/telephony/ims/aidl/IImsRilInd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterIndication "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fputmIsBinderAvailable(Landroid/telephony/ims/ImsRilConnector;Z)V

    .line 255
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v0}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$mcleanUp(Landroid/telephony/ims/ImsRilConnector;)V

    .line 257
    return-void
.end method
