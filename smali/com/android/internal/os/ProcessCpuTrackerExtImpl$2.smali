.class Lcom/android/internal/os/ProcessCpuTrackerExtImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "ProcessCpuTrackerExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->initBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/ProcessCpuTrackerExtImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/ProcessCpuTrackerExtImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/ProcessCpuTrackerExtImpl;

    .line 168
    iput-object p1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$2;->this$0:Lcom/android/internal/os/ProcessCpuTrackerExtImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "action":Ljava/lang/String;
    const-string v1, "oplus.intent.action.MDPWR_UPDATE_TRAFFIC_KERNEL_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-static {}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->-$$Nest$sfgetsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "ProcessCpuTrackerExtImpl"

    const-string v2, " receive MDPWR_UPDATE_TRAFFIC_KERNEL_INFO !"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$2;->this$0:Lcom/android/internal/os/ProcessCpuTrackerExtImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->-$$Nest$fputmShouldReport2Nhs(Lcom/android/internal/os/ProcessCpuTrackerExtImpl;Z)V

    .line 177
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$2;->this$0:Lcom/android/internal/os/ProcessCpuTrackerExtImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sendCpuInfo2Nhs()V

    .line 179
    :cond_1
    return-void
.end method
