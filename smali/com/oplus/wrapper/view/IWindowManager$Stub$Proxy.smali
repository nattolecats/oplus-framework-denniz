.class Lcom/oplus/wrapper/view/IWindowManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWindowManager.java"

# interfaces
.implements Lcom/oplus/wrapper/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wrapper/view/IWindowManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private final blacklist mIWindowManager:Landroid/view/IWindowManager;


# direct methods
.method constructor blacklist <init>(Landroid/view/IWindowManager;)V
    .locals 0
    .param p1, "iWindowManager"    # Landroid/view/IWindowManager;

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput-object p1, p0, Lcom/oplus/wrapper/view/IWindowManager$Stub$Proxy;->mIWindowManager:Landroid/view/IWindowManager;

    .line 767
    return-void
.end method


# virtual methods
.method public whitelist getDockedStackSide()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/oplus/wrapper/view/IWindowManager$Stub$Proxy;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v0

    return v0
.end method

.method public whitelist getInitialDisplayDensity(I)I
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/oplus/wrapper/view/IWindowManager$Stub$Proxy;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0

    return v0
.end method
