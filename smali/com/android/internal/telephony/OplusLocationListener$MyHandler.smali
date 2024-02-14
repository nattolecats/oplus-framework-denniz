.class Lcom/android/internal/telephony/OplusLocationListener$MyHandler;
.super Landroid/os/Handler;
.source "OplusLocationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OplusLocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/OplusLocationListener;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/OplusLocationListener;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 130
    iput-object p1, p0, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->this$0:Lcom/android/internal/telephony/OplusLocationListener;

    .line 131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->this$0:Lcom/android/internal/telephony/OplusLocationListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OplusLocationListener;->-$$Nest$mlogd(Lcom/android/internal/telephony/OplusLocationListener;Ljava/lang/String;)V

    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->this$0:Lcom/android/internal/telephony/OplusLocationListener;

    invoke-static {v0}, Lcom/android/internal/telephony/OplusLocationListener;->-$$Nest$minitLocationAdd(Lcom/android/internal/telephony/OplusLocationListener;)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->this$0:Lcom/android/internal/telephony/OplusLocationListener;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OplusLocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 147
    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->this$0:Lcom/android/internal/telephony/OplusLocationListener;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OplusLocationListener;->onInitailLocationInfo()V

    .line 144
    goto :goto_0

    .line 140
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/OplusLocationListener$MyHandler;->this$0:Lcom/android/internal/telephony/OplusLocationListener;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OplusLocationListener;->onLocationChangedCallback()V

    .line 141
    nop

    .line 152
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
