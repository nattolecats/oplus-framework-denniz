.class Lcom/oplus/util/OplusDisplayOptimizationUtils$SwitchObserverPolicy;
.super Landroid/database/ContentObserver;
.source "OplusDisplayOptimizationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusDisplayOptimizationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchObserverPolicy"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/util/OplusDisplayOptimizationUtils;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/util/OplusDisplayOptimizationUtils;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils$SwitchObserverPolicy;->this$0:Lcom/oplus/util/OplusDisplayOptimizationUtils;

    .line 591
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 592
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 596
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils$SwitchObserverPolicy;->this$0:Lcom/oplus/util/OplusDisplayOptimizationUtils;

    invoke-static {v0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->-$$Nest$mupdateGraphicAccelerationSwitch(Lcom/oplus/util/OplusDisplayOptimizationUtils;)V

    .line 597
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 598
    return-void
.end method
