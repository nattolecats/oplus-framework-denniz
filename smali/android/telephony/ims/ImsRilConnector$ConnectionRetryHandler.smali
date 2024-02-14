.class Landroid/telephony/ims/ImsRilConnector$ConnectionRetryHandler;
.super Landroid/os/Handler;
.source "ImsRilConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsRilConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRetryHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/ImsRilConnector;


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/ims/ImsRilConnector;)V
    .locals 0

    .line 95
    iput-object p1, p0, Landroid/telephony/ims/ImsRilConnector$ConnectionRetryHandler;->this$0:Landroid/telephony/ims/ImsRilConnector;

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/ims/ImsRilConnector;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 99
    iput-object p1, p0, Landroid/telephony/ims/ImsRilConnector$ConnectionRetryHandler;->this$0:Landroid/telephony/ims/ImsRilConnector;

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$ConnectionRetryHandler;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRilConnector;->bindImsRilServiceIfExist()Z

    .line 111
    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Landroid/telephony/ims/ImsRilConnector$ConnectionRetryHandler;->this$0:Landroid/telephony/ims/ImsRilConnector;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRilConnector;->bindImsRilService()V

    .line 108
    nop

    .line 114
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
