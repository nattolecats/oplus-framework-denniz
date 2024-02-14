.class Landroid/app/dialog/AlertControllerExt$2;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


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
.method constructor blacklist <init>(Landroid/app/dialog/AlertControllerExt;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/dialog/AlertControllerExt;

    .line 95
    iput-object p1, p0, Landroid/app/dialog/AlertControllerExt$2;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onConfigurationChanged(Landroid/content/res/OplusBaseConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 100
    iget-object v0, p0, Landroid/app/dialog/AlertControllerExt$2;->this$0:Landroid/app/dialog/AlertControllerExt;

    invoke-static {v0}, Landroid/app/dialog/AlertControllerExt;->-$$Nest$fgetmHandler(Landroid/app/dialog/AlertControllerExt;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    return-void
.end method

.method public whitelist onLowMemory()V
    .locals 0

    .line 106
    return-void
.end method
