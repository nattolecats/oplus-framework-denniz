.class Landroid/secrecy/SecrecyManager$MyHandler;
.super Landroid/os/Handler;
.source "SecrecyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/secrecy/SecrecyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/secrecy/SecrecyManager;


# direct methods
.method private constructor blacklist <init>(Landroid/secrecy/SecrecyManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 101
    iput-object p1, p0, Landroid/secrecy/SecrecyManager$MyHandler;->this$0:Landroid/secrecy/SecrecyManager;

    .line 102
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/secrecy/SecrecyManager;Landroid/content/Context;Landroid/secrecy/SecrecyManager$MyHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/secrecy/SecrecyManager$MyHandler;-><init>(Landroid/secrecy/SecrecyManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/secrecy/SecrecyManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 105
    iput-object p1, p0, Landroid/secrecy/SecrecyManager$MyHandler;->this$0:Landroid/secrecy/SecrecyManager;

    .line 106
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    iget-object v0, p0, Landroid/secrecy/SecrecyManager$MyHandler;->this$0:Landroid/secrecy/SecrecyManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {v0, v1}, Landroid/secrecy/SecrecyManager;->-$$Nest$mupdateSecrecyState(Landroid/secrecy/SecrecyManager;Ljava/util/Map;)V

    .line 114
    nop

    .line 118
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
