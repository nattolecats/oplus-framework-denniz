.class Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$1;
.super Landroid/os/Handler;
.source "OplusPreLoadSplashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->initInner(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 173
    iput-object p1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$1;->this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, 0x800000

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$1;->this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    invoke-static {v0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->-$$Nest$mhandleLoadCacheInfo(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)V

    goto :goto_0

    .line 178
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x800001

    if-ne v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$1;->this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    invoke-static {v0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->-$$Nest$mhandlePreLoadDrawable(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)V

    goto :goto_0

    .line 180
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x800002

    if-ne v0, v1, :cond_2

    .line 181
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$1;->this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    invoke-static {v0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->-$$Nest$mhandleSaveCacheInfo(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)V

    goto :goto_0

    .line 182
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x800003

    if-ne v0, v1, :cond_3

    .line 183
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$1;->this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    invoke-static {v0, p1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->-$$Nest$mhandleCacheDrawableInfo(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;Landroid/os/Message;)V

    goto :goto_0

    .line 184
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x800004

    if-ne v0, v1, :cond_4

    .line 185
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$1;->this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    invoke-static {v0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->-$$Nest$mhandleQuitWorkHandler(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)V

    .line 187
    :cond_4
    :goto_0
    return-void
.end method
