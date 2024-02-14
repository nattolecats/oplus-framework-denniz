.class Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$1;
.super Landroid/os/Handler;
.source "RedPackageAssistRUSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 104
    iput-object p1, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$1;->this$0:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$1;->this$0:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;

    invoke-virtual {v0}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->updateRedpackageDataFromLocal()V

    .line 116
    invoke-static {}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->-$$Nest$sfgetmAdaptationEnvelopeInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->-$$Nest$sfgetmAdaptationEnvelopeInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$1;->this$0:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;

    invoke-static {v0}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->-$$Nest$mupdateEnvelopeDefaultInfo(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;)V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$1;->this$0:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;

    invoke-static {v0}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->-$$Nest$fgetmContext(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "sys_systemui_redpackage_assist_config"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->downloadDataFromRUS(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v0, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$1;->this$0:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;

    invoke-static {v0}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->-$$Nest$mcreatRedPackageConfigFile(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;)V

    .line 110
    nop

    .line 124
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
