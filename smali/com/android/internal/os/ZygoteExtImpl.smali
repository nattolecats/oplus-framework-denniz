.class public Lcom/android/internal/os/ZygoteExtImpl;
.super Ljava/lang/Object;
.source "ZygoteExtImpl.java"

# interfaces
.implements Lcom/android/internal/os/IZygoteExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/android/internal/os/ZygoteExtImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/ZygoteExtImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public blacklist afterSpecializeAppProcessInChildMain(Lcom/android/internal/os/ZygoteArguments;Lcom/android/internal/os/IZygoteArgumentsExt;)V
    .locals 3
    .param p1, "args"    # Lcom/android/internal/os/ZygoteArguments;
    .param p2, "argsExt"    # Lcom/android/internal/os/IZygoteArgumentsExt;

    .line 18
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/android/internal/os/IZygoteArgumentsExt;->getOplusHiddenApiExemptions()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    sget-boolean v0, Lcom/oplus/hiddenapi/IOplusHiddenApiManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/android/internal/os/ZygoteExtImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set child after childMain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    invoke-interface {p2}, Lcom/android/internal/os/IZygoteArgumentsExt;->getOplusHiddenApiExemptions()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    invoke-interface {p2}, Lcom/android/internal/os/IZygoteArgumentsExt;->getOplusHiddenApiExemptions()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->setApiDenylistExemptions([Ljava/lang/String;)V

    .line 30
    :cond_1
    return-void
.end method
