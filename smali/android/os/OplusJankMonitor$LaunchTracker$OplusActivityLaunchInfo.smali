.class Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;
.super Ljava/lang/Object;
.source "OplusJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusJankMonitor$LaunchTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OplusActivityLaunchInfo"
.end annotation


# instance fields
.field blacklist mOplusCurrentTransitionStartTime:J

.field blacklist mOplusLaunchType:J

.field blacklist mPkgName:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/os/OplusJankMonitor$LaunchTracker;


# direct methods
.method constructor blacklist <init>(Landroid/os/OplusJankMonitor$LaunchTracker;JLjava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Landroid/os/OplusJankMonitor$LaunchTracker;
    .param p2, "time"    # J
    .param p4, "pkg"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->this$0:Landroid/os/OplusJankMonitor$LaunchTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mOplusCurrentTransitionStartTime:J

    .line 48
    iput-wide v0, p0, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mOplusLaunchType:J

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mPkgName:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mPkgName:Ljava/lang/String;

    .line 54
    iput-wide p2, p0, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mOplusCurrentTransitionStartTime:J

    .line 55
    return-void
.end method
