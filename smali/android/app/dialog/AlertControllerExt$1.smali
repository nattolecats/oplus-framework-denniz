.class Landroid/app/dialog/AlertControllerExt$1;
.super Landroid/database/ContentObserver;
.source "AlertControllerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/dialog/AlertControllerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/dialog/AlertControllerExt;


# direct methods
.method constructor blacklist <init>(Landroid/app/dialog/AlertControllerExt;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/dialog/AlertControllerExt;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Landroid/app/dialog/AlertControllerExt$1;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 91
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt$1;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v0}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmHandler(Landroid/app/dialog/AlertControllerExt;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    return-void
.end method
