.class Lcom/oplus/os/OplusLockPatternUtils$1;
.super Landroid/util/Singleton;
.source "OplusLockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/os/OplusLockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oplus/os/IOplusLockPatternUtils;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Lcom/oplus/os/IOplusLockPatternUtils;
    .locals 2

    .line 49
    :try_start_0
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/os/IOplusLockPatternUtils$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/os/IOplusLockPatternUtils;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/oplus/os/OplusLockPatternUtils$1;->create()Lcom/oplus/os/IOplusLockPatternUtils;

    move-result-object v0

    return-object v0
.end method
