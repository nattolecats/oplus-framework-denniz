.class public Lcom/oplus/compat/multisearch/FwkCompat$TaskStackChangeListener;
.super Ljava/lang/Object;
.source "FwkCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/multisearch/FwkCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskStackChangeListener"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 462
    return-void
.end method

.method public whitelist onTaskFocusChanged(IZ)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 465
    return-void
.end method

.method public whitelist onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 468
    return-void
.end method

.method public whitelist onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    .param p1, "runningTaskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 471
    return-void
.end method

.method public whitelist onTaskRemoved(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 474
    return-void
.end method
