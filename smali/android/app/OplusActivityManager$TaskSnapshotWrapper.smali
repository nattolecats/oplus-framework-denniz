.class public Landroid/app/OplusActivityManager$TaskSnapshotWrapper;
.super Ljava/lang/Object;
.source "OplusActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/OplusActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskSnapshotWrapper"
.end annotation


# instance fields
.field blacklist mTaskSnapshot:Landroid/window/TaskSnapshot;


# direct methods
.method public constructor blacklist <init>(Landroid/window/TaskSnapshot;)V
    .locals 0
    .param p1, "taskSnapshot"    # Landroid/window/TaskSnapshot;

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    iput-object p1, p0, Landroid/app/OplusActivityManager$TaskSnapshotWrapper;->mTaskSnapshot:Landroid/window/TaskSnapshot;

    .line 895
    return-void
.end method


# virtual methods
.method public whitelist destroy()V
    .locals 1

    .line 902
    :try_start_0
    iget-object v0, p0, Landroid/app/OplusActivityManager$TaskSnapshotWrapper;->mTaskSnapshot:Landroid/window/TaskSnapshot;

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 904
    .local v0, "snapshotInfo":Landroid/graphics/GraphicBuffer;
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    .end local v0    # "snapshotInfo":Landroid/graphics/GraphicBuffer;
    :cond_0
    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 911
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist getSnapshotBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 917
    const/4 v0, 0x0

    return-object v0
.end method
