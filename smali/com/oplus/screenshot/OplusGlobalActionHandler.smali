.class public Lcom/oplus/screenshot/OplusGlobalActionHandler;
.super Landroid/os/Handler;
.source "OplusGlobalActionHandler.java"

# interfaces
.implements Lcom/oplus/screenshot/IOplusScreenshotHelper;


# direct methods
.method public constructor whitelist <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .line 30
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    return-void
.end method


# virtual methods
.method public whitelist getSource()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "GlobalAction"

    return-object v0
.end method

.method public whitelist isGlobalAction()Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method
