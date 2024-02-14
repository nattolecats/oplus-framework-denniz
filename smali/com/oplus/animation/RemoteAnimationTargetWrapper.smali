.class public Lcom/oplus/animation/RemoteAnimationTargetWrapper;
.super Ljava/lang/Object;
.source "RemoteAnimationTargetWrapper.java"


# static fields
.field public static final whitelist ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final whitelist ACTIVITY_TYPE_HOME:I = 0x2

.field public static final whitelist ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final whitelist ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final whitelist ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field public static final whitelist MODE_CHANGING:I = 0x2

.field public static final whitelist MODE_CLOSING:I = 0x1

.field public static final whitelist MODE_OPENING:I


# instance fields
.field public final whitelist activityType:I

.field public final whitelist allowEnterPip:Z

.field public final whitelist clipRect:Landroid/graphics/Rect;

.field public final whitelist contentInsets:Landroid/graphics/Rect;

.field public final whitelist isNotInRecents:Z

.field public final whitelist isTranslucent:Z

.field public final whitelist leash:Landroid/view/SurfaceControl;

.field public final whitelist localBounds:Landroid/graphics/Rect;

.field public whitelist mLaunchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

.field public final whitelist mode:I

.field public final whitelist position:Landroid/graphics/Point;

.field public final whitelist prefixOrderIndex:I

.field public final whitelist rotationChange:I

.field public final whitelist screenSpaceBounds:Landroid/graphics/Rect;

.field public final whitelist sourceContainerBounds:Landroid/graphics/Rect;

.field public final whitelist startBounds:Landroid/graphics/Rect;

.field public final whitelist startLeash:Landroid/view/SurfaceControl;

.field public final whitelist startScreenSpaceBounds:Landroid/graphics/Rect;

.field public whitelist taskId:I

.field public whitelist taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final whitelist windowType:I


# direct methods
.method constructor blacklist <init>(Landroid/view/RemoteAnimationTarget;)V
    .locals 1
    .param p1, "originTarget"    # Landroid/view/RemoteAnimationTarget;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    iput v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->taskId:I

    .line 271
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->mode:I

    iput v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->mode:I

    .line 272
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->leash:Landroid/view/SurfaceControl;

    .line 273
    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    iput-boolean v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->isTranslucent:Z

    .line 274
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->clipRect:Landroid/graphics/Rect;

    .line 275
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->position:Landroid/graphics/Point;

    .line 276
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->localBounds:Landroid/graphics/Rect;

    .line 277
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 278
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 279
    iput-object v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->startScreenSpaceBounds:Landroid/graphics/Rect;

    .line 280
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    iput v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->prefixOrderIndex:I

    .line 281
    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    iput-boolean v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->isNotInRecents:Z

    .line 282
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->contentInsets:Landroid/graphics/Rect;

    .line 283
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    iput v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->activityType:I

    .line 284
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 285
    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    iput-boolean v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->allowEnterPip:Z

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->rotationChange:I

    .line 288
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->startLeash:Landroid/view/SurfaceControl;

    .line 289
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->windowType:I

    iput v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->windowType:I

    .line 290
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->startBounds:Landroid/graphics/Rect;

    .line 292
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->mExt:Landroid/view/IRemoteAnimationTargetExt;

    invoke-interface {v0}, Landroid/view/IRemoteAnimationTargetExt;->getOplusLaunchViewInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/animation/LaunchViewInfo;

    iput-object v0, p0, Lcom/oplus/animation/RemoteAnimationTargetWrapper;->mLaunchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    .line 293
    return-void
.end method
