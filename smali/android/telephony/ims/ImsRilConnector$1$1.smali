.class Landroid/telephony/ims/ImsRilConnector$1$1;
.super Landroid/telephony/ims/aidl/IImsRilInd$Stub;
.source "ImsRilConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ims/ImsRilConnector$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/telephony/ims/ImsRilConnector$1;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/ImsRilConnector$1;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telephony/ims/ImsRilConnector$1;

    .line 217
    iput-object p1, p0, Landroid/telephony/ims/ImsRilConnector$1$1;->this$1:Landroid/telephony/ims/ImsRilConnector$1;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRilInd$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onImsRilInd(IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "eventId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 220
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$1$1;->this$1:Landroid/telephony/ims/ImsRilConnector$1;

    iget-object v0, v0, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v0}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmIImsRilIndListeners(Landroid/telephony/ims/ImsRilConnector;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsRilConnector$1$1;->this$1:Landroid/telephony/ims/ImsRilConnector$1;

    iget-object v1, v1, Landroid/telephony/ims/ImsRilConnector$1;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-static {v1}, Landroid/telephony/ims/ImsRilConnector;->-$$Nest$fgetmIImsRilIndListeners(Landroid/telephony/ims/ImsRilConnector;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsRilConnector$IImsRilIndListener;

    .line 222
    .local v2, "listener":Landroid/telephony/ims/ImsRilConnector$IImsRilIndListener;
    invoke-interface {v2, p1, p2, p3}, Landroid/telephony/ims/ImsRilConnector$IImsRilIndListener;->onImsRilInd(IILandroid/os/Bundle;)V

    .line 223
    .end local v2    # "listener":Landroid/telephony/ims/ImsRilConnector$IImsRilIndListener;
    goto :goto_0

    .line 224
    :cond_0
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
