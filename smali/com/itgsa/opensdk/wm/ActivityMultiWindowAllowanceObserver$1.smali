.class Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver$1;
.super Lcom/oplus/app/IActivityMultiWindowAllowanceObserver$Stub;
.source "ActivityMultiWindowAllowanceObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;


# direct methods
.method constructor blacklist <init>(Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;

    .line 29
    iput-object p1, p0, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver$1;->this$0:Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;

    invoke-direct {p0}, Lcom/oplus/app/IActivityMultiWindowAllowanceObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onMultiWindowAllowanceChanged(Lcom/oplus/app/ActivityMultiWindowAllowance;)V
    .locals 4
    .param p1, "allowance"    # Lcom/oplus/app/ActivityMultiWindowAllowance;

    .line 33
    :try_start_0
    new-instance v0, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowance;

    iget-boolean v1, p1, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSelfSplitToSplitScreen:Z

    iget-boolean v2, p1, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSwitchToSplitScreen:Z

    iget-boolean v3, p1, Lcom/oplus/app/ActivityMultiWindowAllowance;->allowSwitchToFullScreen:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowance;-><init>(ZZZ)V

    .line 36
    .local v0, "allowanceWrapper":Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowance;
    iget-object v1, p0, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver$1;->this$0:Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;

    invoke-virtual {v1, v0}, Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowanceObserver;->onMultiWindowAllowanceChanged(Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "allowanceWrapper":Lcom/itgsa/opensdk/wm/ActivityMultiWindowAllowance;
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 39
    :goto_0
    return-void
.end method
