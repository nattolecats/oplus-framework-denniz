.class public Landroid/view/OplusLongshotViewHelper;
.super Ljava/lang/Object;
.source "OplusLongshotViewHelper.java"

# interfaces
.implements Landroid/view/IOplusLongshotViewHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OplusLongshotViewHelper$H;,
        Landroid/view/OplusLongshotViewHelper$DumpInfoData;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "LongshotDump"


# instance fields
.field private final blacklist mDump:Landroid/view/OplusLongshotViewDump;

.field private final blacklist mHandler:Landroid/view/OplusLongshotViewHelper$H;

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
.method static bridge synthetic blacklist -$$Nest$sfgetDBG()Z
    .locals 1

    sget-boolean v0, Landroid/view/OplusLongshotViewHelper;->DBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/oplus/screenshot/OplusLongshotDump;->DBG:Z

    sput-boolean v0, Landroid/view/OplusLongshotViewHelper;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "viewAncestor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/ViewRootImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/view/OplusLongshotViewHelper;->mViewAncestor:Ljava/lang/ref/WeakReference;

    .line 63
    new-instance v0, Landroid/view/OplusLongshotViewDump;

    invoke-direct {v0}, Landroid/view/OplusLongshotViewDump;-><init>()V

    iput-object v0, p0, Landroid/view/OplusLongshotViewHelper;->mDump:Landroid/view/OplusLongshotViewDump;

    .line 64
    new-instance v1, Landroid/view/OplusLongshotViewHelper$H;

    invoke-direct {v1, p1, v0}, Landroid/view/OplusLongshotViewHelper$H;-><init>(Ljava/lang/ref/WeakReference;Landroid/view/OplusLongshotViewDump;)V

    iput-object v1, p0, Landroid/view/OplusLongshotViewHelper;->mHandler:Landroid/view/OplusLongshotViewHelper$H;

    .line 65
    return-void
.end method

.method private blacklist sendMessage(ILjava/lang/Object;IILandroid/os/Bundle;Z)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "data"    # Landroid/os/Bundle;
    .param p6, "async"    # Z

    .line 260
    iget-object v0, p0, Landroid/view/OplusLongshotViewHelper;->mHandler:Landroid/view/OplusLongshotViewHelper$H;

    invoke-virtual {v0, p1}, Landroid/view/OplusLongshotViewHelper$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 261
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 262
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 264
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 265
    if-eqz p5, :cond_0

    .line 266
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 268
    :cond_0
    if-eqz p6, :cond_1

    .line 269
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 271
    :cond_1
    iget-object v1, p0, Landroid/view/OplusLongshotViewHelper;->mHandler:Landroid/view/OplusLongshotViewHelper$H;

    invoke-virtual {v1, v0}, Landroid/view/OplusLongshotViewHelper$H;->sendMessage(Landroid/os/Message;)Z

    .line 272
    return-void
.end method

.method private blacklist sendMessage(ILjava/lang/Object;IIZ)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .line 256
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/OplusLongshotViewHelper;->sendMessage(ILjava/lang/Object;IILandroid/os/Bundle;Z)V

    .line 257
    return-void
.end method


# virtual methods
.method public blacklist longshotCollectWindow(ZZ)Lcom/oplus/view/analysis/OplusWindowNode;
    .locals 3
    .param p1, "isStatusBar"    # Z
    .param p2, "isNavigationBar"    # Z

    .line 97
    iget-object v0, p0, Landroid/view/OplusLongshotViewHelper;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 98
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Landroid/view/OplusLongshotViewHelper;->mDump:Landroid/view/OplusLongshotViewDump;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Landroid/view/OplusLongshotViewDump;->collectWindow(Landroid/view/View;ZZ)Lcom/oplus/view/analysis/OplusWindowNode;

    move-result-object v1

    return-object v1

    .line 101
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist longshotDump(Ljava/io/FileDescriptor;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/view/analysis/OplusWindowNode;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    .local p2, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .local p3, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    :try_start_0
    new-instance v6, Landroid/view/OplusLongshotViewHelper$DumpInfoData;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, v6

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/OplusLongshotViewHelper$DumpInfoData;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;Z[Ljava/lang/String;)V

    move-object v2, v6

    .line 89
    .local v2, "data":Landroid/view/OplusLongshotViewHelper$DumpInfoData;
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/OplusLongshotViewHelper;->sendMessage(ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v2    # "data":Landroid/view/OplusLongshotViewHelper$DumpInfoData;
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Landroid/view/OplusLongshotViewHelper;->DBG:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "longshotDump failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LongshotDump"

    invoke-static {v1, v3, v2}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public blacklist longshotInjectInput(Landroid/view/InputEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 106
    iget-object v0, p0, Landroid/view/OplusLongshotViewHelper;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 107
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    .line 110
    :cond_0
    return-void
.end method

.method public blacklist longshotInjectInputBegin()V
    .locals 2

    .line 114
    iget-object v0, p0, Landroid/view/OplusLongshotViewHelper;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 115
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Landroid/view/OplusLongshotViewHelper;->mDump:Landroid/view/OplusLongshotViewDump;

    invoke-virtual {v1}, Landroid/view/OplusLongshotViewDump;->injectInputBegin()V

    .line 118
    :cond_0
    return-void
.end method

.method public blacklist longshotInjectInputEnd()V
    .locals 2

    .line 122
    iget-object v0, p0, Landroid/view/OplusLongshotViewHelper;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 123
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Landroid/view/OplusLongshotViewHelper;->mDump:Landroid/view/OplusLongshotViewDump;

    invoke-virtual {v1}, Landroid/view/OplusLongshotViewDump;->injectInputEnd()V

    .line 126
    :cond_0
    return-void
.end method

.method public blacklist longshotNotifyConnected(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .line 72
    iget-object v0, p0, Landroid/view/OplusLongshotViewHelper;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 73
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;

    move-result-object v1

    .line 76
    .local v1, "iViewRootImplExt":Landroid/view/IViewRootImplExt;
    invoke-interface {v1, p1}, Landroid/view/IViewRootImplExt;->setConnected(Z)V

    .line 77
    if-nez p1, :cond_0

    .line 78
    iget-object v2, p0, Landroid/view/OplusLongshotViewHelper;->mDump:Landroid/view/OplusLongshotViewDump;

    invoke-virtual {v2}, Landroid/view/OplusLongshotViewDump;->reset()V

    .line 81
    .end local v1    # "iViewRootImplExt":Landroid/view/IViewRootImplExt;
    :cond_0
    return-void
.end method

.method public blacklist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 153
    const/4 v0, 0x0

    const-string v1, "android.view.IWindow"

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 248
    :pswitch_0
    return v0

    .line 237
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    nop

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;

    move-result-object v0

    .line 240
    .local v0, "listener":Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    const/4 v1, 0x0

    .line 241
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    .line 244
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/view/OplusLongshotViewHelper;->requestScrollCapture(Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Landroid/os/Bundle;)V

    .line 245
    return v2

    .line 223
    .end local v0    # "listener":Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    .end local v1    # "extras":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 225
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/OplusLongshotViewHelper;->screenshotDump(Ljava/io/FileDescriptor;)V

    .line 228
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 233
    :cond_1
    :goto_0
    return v2

    .line 218
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Landroid/view/OplusLongshotViewHelper;->longshotInjectInputEnd()V

    .line 220
    return v2

    .line 213
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/view/OplusLongshotViewHelper;->longshotInjectInputBegin()V

    .line 215
    return v2

    .line 201
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    .local v0, "event":Landroid/view/InputEvent;
    goto :goto_1

    .line 206
    .end local v0    # "event":Landroid/view/InputEvent;
    :cond_2
    const/4 v0, 0x0

    .line 208
    .restart local v0    # "event":Landroid/view/InputEvent;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .local v1, "mode":I
    invoke-virtual {p0, v0, v1}, Landroid/view/OplusLongshotViewHelper;->longshotInjectInput(Landroid/view/InputEvent;I)V

    .line 210
    return v2

    .line 187
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "mode":I
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v2, v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v0

    .line 189
    .local v1, "isStatusBar":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v2, v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v0

    .line 190
    .local v3, "isNavigationBar":Z
    :goto_3
    invoke-virtual {p0, v1, v3}, Landroid/view/OplusLongshotViewHelper;->longshotCollectWindow(ZZ)Lcom/oplus/view/analysis/OplusWindowNode;

    move-result-object v4

    .line 191
    .local v4, "result":Lcom/oplus/view/analysis/OplusWindowNode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v4, :cond_5

    .line 193
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v4, p3, v2}, Lcom/oplus/view/analysis/OplusWindowNode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 196
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    :goto_4
    return v2

    .line 161
    .end local v1    # "isStatusBar":Z
    .end local v3    # "isNavigationBar":Z
    .end local v4    # "result":Lcom/oplus/view/analysis/OplusWindowNode;
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 163
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_8

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 166
    sget-object v1, Lcom/oplus/view/analysis/OplusWindowNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    goto :goto_5

    .line 168
    .end local v1    # "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    :cond_6
    const/4 v1, 0x0

    .line 171
    .restart local v1    # "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 172
    sget-object v3, Lcom/oplus/view/analysis/OplusWindowNode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    goto :goto_6

    .line 174
    .end local v3    # "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    :cond_7
    const/4 v3, 0x0

    .line 176
    .restart local v3    # "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "args":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {p0, v5, v1, v3, v4}, Landroid/view/OplusLongshotViewHelper;->longshotDump(Ljava/io/FileDescriptor;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V

    .line 179
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    goto :goto_7

    .line 180
    :catch_1
    move-exception v5

    .line 184
    .end local v1    # "systemWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .end local v3    # "floatWindows":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/view/analysis/OplusWindowNode;>;"
    .end local v4    # "args":[Ljava/lang/String;
    :cond_8
    :goto_7
    return v2

    .line 155
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v2, v1, :cond_9

    move v0, v2

    .line 157
    .local v0, "isConnected":Z
    :cond_9
    invoke-virtual {p0, v0}, Landroid/view/OplusLongshotViewHelper;->longshotNotifyConnected(Z)V

    .line 158
    return v2

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist requestScrollCapture(Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "listener"    # Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 142
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    :try_start_0
    invoke-direct/range {v0 .. v6}, Landroid/view/OplusLongshotViewHelper;->sendMessage(ILjava/lang/Object;IILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/view/OplusLongshotViewHelper;->DBG:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestScrollCapture failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LongshotDump"

    invoke-static {v1, v3, v2}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist screenshotDump(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 131
    :try_start_0
    new-instance v2, Landroid/view/OplusLongshotViewHelper$DumpInfoData;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3, v1}, Landroid/view/OplusLongshotViewHelper$DumpInfoData;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Ljava/util/List;Z)V

    .line 132
    .local v2, "data":Landroid/view/OplusLongshotViewHelper$DumpInfoData;
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/OplusLongshotViewHelper;->sendMessage(ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v2    # "data":Landroid/view/OplusLongshotViewHelper$DumpInfoData;
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Landroid/view/OplusLongshotViewHelper;->DBG:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenshotDump failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LongshotDump"

    invoke-static {v1, v3, v2}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
