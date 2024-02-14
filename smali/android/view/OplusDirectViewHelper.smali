.class public Landroid/view/OplusDirectViewHelper;
.super Landroid/view/OplusDummyDirectViewHelper;
.source "OplusDirectViewHelper.java"


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "DirectService"


# instance fields
.field private final blacklist mDump:Landroid/view/OplusDirectViewDump;

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
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    sget-boolean v0, Lcom/oplus/direct/OplusDirectUtils;->DBG:Z

    sput-boolean v0, Landroid/view/OplusDirectViewHelper;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "viewAncestor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/ViewRootImpl;>;"
    invoke-direct {p0, p1}, Landroid/view/OplusDummyDirectViewHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 41
    new-instance v0, Landroid/view/OplusDirectViewDump;

    invoke-direct {v0}, Landroid/view/OplusDirectViewDump;-><init>()V

    iput-object v0, p0, Landroid/view/OplusDirectViewHelper;->mDump:Landroid/view/OplusDirectViewDump;

    .line 48
    iput-object p1, p0, Landroid/view/OplusDirectViewHelper;->mViewAncestor:Ljava/lang/ref/WeakReference;

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist directFindCmd(Lcom/oplus/direct/OplusDirectFindCmd;)V
    .locals 3
    .param p1, "findCmd"    # Lcom/oplus/direct/OplusDirectFindCmd;

    .line 56
    if-nez p1, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Landroid/view/OplusDirectViewHelper;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    .line 60
    .local v0, "viewAncestor":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Landroid/view/OplusDirectViewHelper;->mDump:Landroid/view/OplusDirectViewDump;

    invoke-virtual {v1, v0, p1}, Landroid/view/OplusDirectViewDump;->findCmd(Landroid/view/ViewRootImpl;Lcom/oplus/direct/OplusDirectFindCmd;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/direct/OplusDirectFindCmd;->getCallback()Lcom/oplus/direct/IOplusDirectFindCallback;

    move-result-object v1

    const-string v2, "no_view"

    invoke-static {v1, v2}, Lcom/oplus/direct/OplusDirectUtils;->onFindFailed(Lcom/oplus/direct/IOplusDirectFindCallback;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void
.end method

.method public blacklist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 72
    packed-switch p1, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    return v0

    .line 74
    :pswitch_0
    const-string v0, "android.view.IWindow"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/oplus/direct/OplusDirectFindCmd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/direct/OplusDirectFindCmd;

    .local v0, "findCmd":Lcom/oplus/direct/OplusDirectFindCmd;
    goto :goto_0

    .line 79
    .end local v0    # "findCmd":Lcom/oplus/direct/OplusDirectFindCmd;
    :cond_0
    const/4 v0, 0x0

    .line 81
    .restart local v0    # "findCmd":Lcom/oplus/direct/OplusDirectFindCmd;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/OplusDirectViewHelper;->directFindCmd(Lcom/oplus/direct/OplusDirectFindCmd;)V

    .line 82
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2718
        :pswitch_0
    .end packed-switch
.end method
