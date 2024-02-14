.class public Lcom/oplus/app/OplusGameSpaceController;
.super Lcom/oplus/app/IOplusGameSpaceController$Stub;
.source "OplusGameSpaceController.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oplus/app/IOplusGameSpaceController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist dispatchGameDock(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 42
    return-void
.end method

.method public whitelist gameExiting(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .line 35
    return-void
.end method

.method public whitelist gameStarting(Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "isResume"    # Z

    .line 31
    return-void
.end method

.method public whitelist isGameDockAllowed()Z
    .locals 1

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist videoStarting(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 39
    return-void
.end method
