.class public Landroid/os/BinderProxyExtImpl;
.super Ljava/lang/Object;
.source "BinderProxyExtImpl.java"

# interfaces
.implements Landroid/os/IBinderProxyExt;


# static fields
.field private static final blacklist DEBUG_SWITCH:Z

.field private static final blacklist TAG:Ljava/lang/String; = "BinderProxyExtImpl"


# instance fields
.field private final blacklist mBinderProxy:Landroid/os/BinderProxy;

.field private blacklist mBinderTransactProxy:Landroid/os/IBinderTransactProxy;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 25
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/BinderProxyExtImpl;->DEBUG_SWITCH:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BinderProxyExtImpl;->mBinderTransactProxy:Landroid/os/IBinderTransactProxy;

    .line 31
    move-object v0, p1

    check-cast v0, Landroid/os/BinderProxy;

    iput-object v0, p0, Landroid/os/BinderProxyExtImpl;->mBinderProxy:Landroid/os/BinderProxy;

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist getBinderTransactProxy()Landroid/os/IBinderTransactProxy;
    .locals 1

    .line 47
    iget-object v0, p0, Landroid/os/BinderProxyExtImpl;->mBinderTransactProxy:Landroid/os/IBinderTransactProxy;

    return-object v0
.end method

.method public blacklist setBinderTransactProxy(Landroid/os/IBinderTransactProxy;)V
    .locals 0
    .param p1, "proxy"    # Landroid/os/IBinderTransactProxy;

    .line 43
    iput-object p1, p0, Landroid/os/BinderProxyExtImpl;->mBinderTransactProxy:Landroid/os/IBinderTransactProxy;

    .line 44
    return-void
.end method

.method public blacklist transact(Landroid/os/IBinder;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "data"    # Landroid/os/Parcel;
    .param p4, "reply"    # Landroid/os/Parcel;
    .param p5, "flags"    # I

    .line 36
    iget-object v0, p0, Landroid/os/BinderProxyExtImpl;->mBinderTransactProxy:Landroid/os/IBinderTransactProxy;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_0
    iget-object v1, p0, Landroid/os/BinderProxyExtImpl;->mBinderProxy:Landroid/os/BinderProxy;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IBinderTransactProxy;->transact(Landroid/os/IBinder;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method
