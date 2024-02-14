.class public Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowance;
.super Ljava/lang/Object;
.source "ActivityMultiWindowAllowance.java"


# instance fields
.field public whitelist allowSelfSplitToSplitScreen:Z

.field public whitelist allowSwitchToFullScreen:Z

.field public whitelist allowSwitchToSplitScreen:Z


# direct methods
.method public constructor whitelist <init>(ZZZ)V
    .locals 0
    .param p1, "allowSelfSplitToSplitScreen"    # Z
    .param p2, "allowSwitchToSplitScreen"    # Z
    .param p3, "allowSwitchToFullScreen"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowance;->allowSelfSplitToSplitScreen:Z

    .line 43
    iput-boolean p3, p0, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowance;->allowSwitchToFullScreen:Z

    .line 44
    iput-boolean p2, p0, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowance;->allowSwitchToSplitScreen:Z

    .line 45
    return-void
.end method
