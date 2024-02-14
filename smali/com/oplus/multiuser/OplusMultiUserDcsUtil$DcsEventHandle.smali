.class Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;
.super Landroid/os/Handler;
.source "OplusMultiUserDcsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/multiuser/OplusMultiUserDcsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DcsEventHandle"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/multiuser/OplusMultiUserDcsUtil;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/multiuser/OplusMultiUserDcsUtil;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/multiuser/OplusMultiUserDcsUtil;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 147
    iput-object p1, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;->this$0:Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

    .line 148
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 149
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 153
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;->this$0:Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

    invoke-static {v0, p1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->-$$Nest$mhandleAccessModeMessage(Lcom/oplus/multiuser/OplusMultiUserDcsUtil;Landroid/os/Message;)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;->this$0:Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

    invoke-virtual {v0, p1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->handleSwitchUserMessage(Landroid/os/Message;)V

    .line 159
    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/oplus/multiuser/OplusMultiUserDcsUtil$DcsEventHandle;->this$0:Lcom/oplus/multiuser/OplusMultiUserDcsUtil;

    invoke-virtual {v0, p1}, Lcom/oplus/multiuser/OplusMultiUserDcsUtil;->handleCreateUserMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    nop

    .line 165
    :goto_0
    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
