.class Landroid/app/OplusActivityManager$2;
.super Landroid/app/TaskStackListener;
.source "OplusActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/OplusActivityManager;->registerTaskStackListener(Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;)V
    .locals 0

    .line 935
    iput-object p1, p0, Landroid/app/OplusActivityManager$2;->val$listener:Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onActivityPinned(Ljava/lang/String;III)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I
    .param p4, "stackId"    # I

    .line 948
    iget-object v0, p0, Landroid/app/OplusActivityManager$2;->val$listener:Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;->onActivityPinned(Ljava/lang/String;III)V

    .line 949
    return-void
.end method

.method public blacklist onActivityUnpinned()V
    .locals 1

    .line 943
    iget-object v0, p0, Landroid/app/OplusActivityManager$2;->val$listener:Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;

    invoke-interface {v0}, Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;->onActivityUnpinned()V

    .line 944
    return-void
.end method

.method public blacklist onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 938
    iget-object v0, p0, Landroid/app/OplusActivityManager$2;->val$listener:Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;

    new-instance v1, Landroid/app/OplusActivityManager$TaskSnapshotWrapper;

    invoke-direct {v1, p2}, Landroid/app/OplusActivityManager$TaskSnapshotWrapper;-><init>(Landroid/window/TaskSnapshot;)V

    invoke-interface {v0, p1, v1}, Landroid/app/OplusActivityManager$ITaskStackListenerWrapper;->onTaskSnapshotChanged(ILandroid/app/OplusActivityManager$TaskSnapshotWrapper;)V

    .line 939
    return-void
.end method
