.class public abstract Loplus/app/AthenaServiceInternal;
.super Ljava/lang/Object;
.source "AthenaServiceInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist notifyDateChanged()V
.end method

.method public abstract blacklist notifyFgServiceStatusChanged(Landroid/os/Bundle;)V
.end method

.method public abstract blacklist notifyForegroundActivitiesChanged(IIZ)V
.end method

.method public abstract blacklist notifyPackageStatusChanged(Landroid/os/Bundle;)V
.end method

.method public abstract blacklist notifyPipStatusChanged(Landroid/os/Bundle;)V
.end method

.method public abstract blacklist notifyProcessDied(II)V
.end method

.method public abstract blacklist notifyScreenStatusChanged(Z)V
.end method

.method public abstract blacklist notifyTaskRemoved(I)V
.end method

.method public abstract blacklist notifyTopAppChanged(Landroid/os/Bundle;)V
.end method

.method public abstract blacklist notifyUidActive(I)V
.end method

.method public abstract blacklist notifyUidGone(IZ)V
.end method

.method public abstract blacklist notifyUidIdle(IZ)V
.end method

.method public abstract blacklist notifyWallPaperChanged(Landroid/os/Bundle;)V
.end method

.method public abstract blacklist transact(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
