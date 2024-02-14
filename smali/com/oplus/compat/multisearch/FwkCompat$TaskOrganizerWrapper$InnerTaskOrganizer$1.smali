.class Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer$1;
.super Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;
.source "FwkCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;

    .line 403
    iput-object p1, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer$1;->this$1:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;

    invoke-direct {p0}, Lcom/oplus/multisearch/IOplusMultiSearchListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 406
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer$1;->this$1:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 407
    return-void
.end method

.method public whitelist onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer$1;->this$1:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 412
    return-void
.end method

.method public whitelist onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 416
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer$1;->this$1:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 417
    return-void
.end method

.method public whitelist onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 421
    iget-object v0, p0, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer$1;->this$1:Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/oplus/compat/multisearch/FwkCompat$TaskOrganizerWrapper$InnerTaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 422
    return-void
.end method
