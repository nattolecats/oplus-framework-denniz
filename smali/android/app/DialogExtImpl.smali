.class public Landroid/app/DialogExtImpl;
.super Ljava/lang/Object;
.source "DialogExtImpl.java"

# interfaces
.implements Landroid/app/IDialogExt;


# instance fields
.field private blacklist mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    iput-object v0, p0, Landroid/app/DialogExtImpl;->mDialog:Landroid/app/Dialog;

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist changeDarkAlgorithmType(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 37
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/darkmode/IOplusDarkModeManager;->changeUsageForceDarkAlgorithmType(Landroid/view/View;I)V

    .line 38
    return-void
.end method

.method public blacklist logEvent(ILjava/lang/String;Landroid/view/KeyEvent;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "info"    # Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 46
    invoke-static {p2, p3, p4}, Lcom/oplus/debug/InputLog;->debugEventHandled(Ljava/lang/String;Landroid/view/InputEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void
.end method
