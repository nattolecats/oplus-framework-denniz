.class public abstract Lcom/oplus/screenshot/OplusScreenshotService;
.super Lcom/oplus/screenshot/IOplusScreenshot$Stub;
.source "OplusScreenshotService.java"


# instance fields
.field protected final whitelist mContext:Landroid/content/Context;

.field protected final whitelist mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 51
    invoke-direct {p0}, Lcom/oplus/screenshot/IOplusScreenshot$Stub;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScreenshotService;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/oplus/screenshot/OplusScreenshotService;->mExtras:Landroid/os/Bundle;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist isEdit()Z
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist start(Lcom/oplus/screenshot/IOplusScreenshotCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oplus/screenshot/IOplusScreenshotCallback;

    .line 61
    return-void
.end method

.method public whitelist stop()V
    .locals 0

    .line 65
    return-void
.end method
