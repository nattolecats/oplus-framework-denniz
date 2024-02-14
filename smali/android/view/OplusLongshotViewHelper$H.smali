.class Landroid/view/OplusLongshotViewHelper$H;
.super Landroid/os/Handler;
.source "OplusLongshotViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusLongshotViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "H"
.end annotation


# static fields
.field public static final blacklist MSG_DUMP_VIEW_HIERARCHY:I = 0x1

.field public static final blacklist MSG_REQUEST_SCROLL_CAPTURE:I = 0x2


# instance fields
.field private final blacklist mDump:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/OplusLongshotViewDump;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViewAncestor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/ref/WeakReference;Landroid/view/OplusLongshotViewDump;)V
    .locals 1
    .param p2, "dump"    # Landroid/view/OplusLongshotViewDump;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;",
            "Landroid/view/OplusLongshotViewDump;",
            ")V"
        }
    .end annotation

    .line 329
    .local p1, "viewAncestor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/ViewRootImpl;>;"
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 330
    iput-object p1, p0, Landroid/view/OplusLongshotViewHelper$H;->mViewAncestor:Ljava/lang/ref/WeakReference;

    .line 331
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/OplusLongshotViewHelper$H;->mDump:Ljava/lang/ref/WeakReference;

    .line 332
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 336
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "LongshotDump"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 357
    :pswitch_0
    iget-object v0, p0, Landroid/view/OplusLongshotViewHelper$H;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 358
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    iget-object v2, p0, Landroid/view/OplusLongshotViewHelper$H;->mDump:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/OplusLongshotViewDump;

    .line 359
    .local v2, "dump":Landroid/view/OplusLongshotViewDump;
    if-eqz v2, :cond_2

    .line 360
    if-eqz v0, :cond_1

    .line 361
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 362
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;

    .line 364
    .local v1, "listener":Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v3

    .line 365
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {v2, v0, v1, v3}, Landroid/view/OplusLongshotViewDump;->requestScrollCapture(Landroid/view/ViewRootImpl;Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Landroid/os/Bundle;)V

    .line 366
    .end local v1    # "listener":Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    .end local v3    # "extras":Landroid/os/Bundle;
    goto/16 :goto_0

    .line 367
    :cond_0
    invoke-static {}, Landroid/view/OplusLongshotViewHelper;->-$$Nest$sfgetDBG()Z

    move-result v3

    const-string v4, "requestScrollCapture : viewAncestor.mView is null"

    invoke-static {v3, v1, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_1
    invoke-static {}, Landroid/view/OplusLongshotViewHelper;->-$$Nest$sfgetDBG()Z

    move-result v3

    const-string v4, "requestScrollCapture : viewAncestor is null"

    invoke-static {v3, v1, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_2
    invoke-static {}, Landroid/view/OplusLongshotViewHelper;->-$$Nest$sfgetDBG()Z

    move-result v3

    const-string v4, "requestScrollCapture : dump is null"

    invoke-static {v3, v1, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 375
    goto :goto_0

    .line 338
    .end local v0    # "viewAncestor":Landroid/view/ViewRootImpl;
    .end local v2    # "dump":Landroid/view/OplusLongshotViewDump;
    :pswitch_1
    iget-object v0, p0, Landroid/view/OplusLongshotViewHelper$H;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 339
    .restart local v0    # "viewAncestor":Landroid/view/ViewRootImpl;
    iget-object v2, p0, Landroid/view/OplusLongshotViewHelper$H;->mDump:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/view/OplusLongshotViewDump;

    .line 340
    .local v9, "dump":Landroid/view/OplusLongshotViewDump;
    if-eqz v0, :cond_4

    if-eqz v9, :cond_4

    .line 341
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 342
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/OplusLongshotViewHelper$DumpInfoData;

    .line 343
    .local v1, "data":Landroid/view/OplusLongshotViewHelper$DumpInfoData;
    invoke-virtual {v1}, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 344
    .local v10, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->getSystemWindows()Ljava/util/List;

    move-result-object v11

    .line 345
    .local v11, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    invoke-virtual {v1}, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->getFloatWindows()Ljava/util/List;

    move-result-object v12

    .line 346
    .local v12, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    invoke-virtual {v1}, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->isLongshot()Z

    move-result v7

    invoke-virtual {v1}, Landroid/view/OplusLongshotViewHelper$DumpInfoData;->getArgs()[Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    move-object v3, v0

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-virtual/range {v2 .. v8}, Landroid/view/OplusLongshotViewDump;->dumpViewRoot(Landroid/view/ViewRootImpl;Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;Z[Ljava/lang/String;)V

    .line 347
    .end local v1    # "data":Landroid/view/OplusLongshotViewHelper$DumpInfoData;
    .end local v10    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v11    # "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .end local v12    # "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    goto :goto_0

    .line 348
    :cond_3
    invoke-static {}, Landroid/view/OplusLongshotViewHelper;->-$$Nest$sfgetDBG()Z

    move-result v2

    const-string v3, "longshotDump : viewAncestor.mView is null"

    invoke-static {v2, v1, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_4
    invoke-static {}, Landroid/view/OplusLongshotViewHelper;->-$$Nest$sfgetDBG()Z

    move-result v2

    const-string v3, "longshotDump : viewAncestor is null"

    invoke-static {v2, v1, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 353
    nop

    .line 381
    .end local v0    # "viewAncestor":Landroid/view/ViewRootImpl;
    .end local v9    # "dump":Landroid/view/OplusLongshotViewDump;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
