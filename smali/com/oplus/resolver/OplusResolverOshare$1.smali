.class Lcom/oplus/resolver/OplusResolverOshare$1;
.super Landroid/os/Handler;
.source "OplusResolverOshare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverOshare;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverOshare;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverOshare;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverOshare;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 144
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 147
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "mResolverOshareingAdapter is null"

    const/16 v2, 0x65

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v2, "handle KEY_FIRST_ADD_DEVICE_LIST"

    invoke-static {v0, v2}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmResolverOshareingAdapter(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 185
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverOshare$1;->removeMessages(I)V

    .line 186
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmResolverOshareingAdapter(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/oshare/OplusOshareDevice;

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->notifySingleItemAdd(Lcom/oplus/oshare/OplusOshareDevice;)V

    goto/16 :goto_0

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v2, "handle KEY_NOTIFY_DEVICE_LIST_ADD"

    invoke-static {v0, v2}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmResolverOshareingAdapter(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 177
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmResolverOshareingAdapter(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->notifyItemAdd(Ljava/util/ArrayList;)V

    .line 180
    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "handle KEY_RESET_UPDATE_DEVICE_LIST_STATUS"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fputmIsUpdateDeviceList(Lcom/oplus/resolver/OplusResolverOshare;Z)V

    .line 168
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmPendingDeviceList(Lcom/oplus/resolver/OplusResolverOshare;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {p0, v2}, Lcom/oplus/resolver/OplusResolverOshare$1;->removeMessages(I)V

    .line 170
    invoke-virtual {p0, v2}, Lcom/oplus/resolver/OplusResolverOshare$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "handle update pending device list message"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmPendingDeviceList(Lcom/oplus/resolver/OplusResolverOshare;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mcheckCanUpdateDeviceList(Lcom/oplus/resolver/OplusResolverOshare;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "update pending device list"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmResolverOshareingAdapter(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmPendingDeviceList(Lcom/oplus/resolver/OplusResolverOshare;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->notifyDeviceListChange(Ljava/util/List;)V

    .line 155
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fputmPendingDeviceList(Lcom/oplus/resolver/OplusResolverOshare;Ljava/util/List;)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const-string v1, "send update pending device list message"

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mlogIfNeeded(Lcom/oplus/resolver/OplusResolverOshare;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$1;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverOshare;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {p0, v2}, Lcom/oplus/resolver/OplusResolverOshare$1;->removeMessages(I)V

    .line 160
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Lcom/oplus/resolver/OplusResolverOshare$1;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
