.class final Landroid/app/dialog/AlertControllerExt$BottomSpaceHandler;
.super Landroid/os/Handler;
.source "AlertControllerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/dialog/AlertControllerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BottomSpaceHandler"
.end annotation


# static fields
.field private static final blacklist MSG_CONFIGURATION_CHANGED:I = 0x2

.field private static final blacklist MSG_UPDATE_SPACE_HEIGHT:I = 0x1


# instance fields
.field private blacklist mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/dialog/AlertControllerExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/app/dialog/AlertControllerExt;)V
    .locals 1
    .param p1, "controller"    # Landroid/app/dialog/AlertControllerExt;

    .line 650
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 651
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/dialog/AlertControllerExt$BottomSpaceHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 652
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 656
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt$BottomSpaceHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/dialog/AlertControllerExt;

    .line 657
    .local v0, "controller":Landroid/app/dialog/AlertControllerExt;
    if-nez v0, :cond_0

    .line 658
    return-void

    .line 660
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 666
    :pswitch_0
    invoke-static {v0}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$monConfigurationChanged(Landroid/app/dialog/AlertControllerExt;)V

    .line 667
    goto :goto_0

    .line 662
    :pswitch_1
    invoke-static {v0}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$mupdateSpaceHeight(Landroid/app/dialog/AlertControllerExt;)V

    .line 663
    nop

    .line 672
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
