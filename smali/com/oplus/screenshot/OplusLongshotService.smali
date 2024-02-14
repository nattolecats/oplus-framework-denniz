.class public abstract Lcom/oplus/screenshot/OplusLongshotService;
.super Lcom/oplus/screenshot/IOplusLongshot$Stub;
.source "OplusLongshotService.java"


# instance fields
.field protected final whitelist mContext:Landroid/content/Context;

.field protected final whitelist mNavBarVisible:Z

.field protected final whitelist mStatusBarVisible:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;ZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .line 57
    invoke-direct {p0}, Lcom/oplus/screenshot/IOplusLongshot$Stub;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/oplus/screenshot/OplusLongshotService;->mContext:Landroid/content/Context;

    .line 59
    iput-boolean p2, p0, Lcom/oplus/screenshot/OplusLongshotService;->mStatusBarVisible:Z

    .line 60
    iput-boolean p3, p0, Lcom/oplus/screenshot/OplusLongshotService;->mNavBarVisible:Z

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist notifyOverScroll(Lcom/oplus/screenshot/OplusLongshotEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/oplus/screenshot/OplusLongshotEvent;

    .line 76
    return-void
.end method

.method public whitelist start(Lcom/oplus/screenshot/IOplusLongshotCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oplus/screenshot/IOplusLongshotCallback;

    .line 68
    return-void
.end method

.method public whitelist stop()V
    .locals 0

    .line 72
    return-void
.end method
