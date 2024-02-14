.class Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$MyHandler;
.super Landroid/os/Handler;
.source "OplusPreloadSpalshRUSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 119
    iput-object p1, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$MyHandler;->this$0:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;

    .line 120
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper$MyHandler;->this$0:Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;

    invoke-static {v0}, Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;->-$$Nest$mupdateRUSInfo(Lcom/oplus/preloadsplash/OplusPreloadSpalshRUSHelper;)V

    .line 127
    nop

    .line 131
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x700001
        :pswitch_0
    .end packed-switch
.end method
