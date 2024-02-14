.class Lcom/oplus/benchmark/OplusBenchAppSwitchManager$1;
.super Ljava/lang/Object;
.source "OplusBenchAppSwitchManager.java"

# interfaces
.implements Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/benchmark/OplusBenchAppSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/benchmark/OplusBenchAppSwitchManager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/benchmark/OplusBenchAppSwitchManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/benchmark/OplusBenchAppSwitchManager;

    .line 74
    iput-object p1, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager$1;->this$0:Lcom/oplus/benchmark/OplusBenchAppSwitchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/app/OplusAppEnterInfo;

    .line 102
    return-void
.end method

.method public whitelist onActivityExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/oplus/app/OplusAppExitInfo;

    .line 106
    return-void
.end method

.method public whitelist onAppEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/oplus/app/OplusAppEnterInfo;

    .line 77
    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p1, Lcom/oplus/app/OplusAppEnterInfo;->targetName:Ljava/lang/String;

    .line 79
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " switch to foreground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBenchAppSwitchManagerr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    const-string v1, "antutu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager$1;->this$0:Lcom/oplus/benchmark/OplusBenchAppSwitchManager;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->-$$Nest$msetIgnoreTargetFootprint(Lcom/oplus/benchmark/OplusBenchAppSwitchManager;Ljava/lang/Boolean;)V

    .line 82
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 85
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public whitelist onAppExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/oplus/app/OplusAppExitInfo;

    .line 89
    if-eqz p1, :cond_1

    .line 90
    iget-object v0, p1, Lcom/oplus/app/OplusAppExitInfo;->targetName:Ljava/lang/String;

    .line 91
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " switch to exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBenchAppSwitchManagerr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    const-string v1, "antutu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager$1;->this$0:Lcom/oplus/benchmark/OplusBenchAppSwitchManager;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->-$$Nest$msetIgnoreTargetFootprint(Lcom/oplus/benchmark/OplusBenchAppSwitchManager;Ljava/lang/Boolean;)V

    .line 94
    iget-object v1, p0, Lcom/oplus/benchmark/OplusBenchAppSwitchManager$1;->this$0:Lcom/oplus/benchmark/OplusBenchAppSwitchManager;

    invoke-virtual {v1}, Lcom/oplus/benchmark/OplusBenchAppSwitchManager;->unregisterBenchAppSwitchObserver()V

    .line 95
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 98
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
