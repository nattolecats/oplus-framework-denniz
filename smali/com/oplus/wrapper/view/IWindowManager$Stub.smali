.class public abstract Lcom/oplus/wrapper/view/IWindowManager$Stub;
.super Ljava/lang/Object;
.source "IWindowManager.java"

# interfaces
.implements Landroid/os/IInterface;
.implements Lcom/oplus/wrapper/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wrapper/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/wrapper/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# instance fields
.field private final blacklist mIWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/oplus/wrapper/view/IWindowManager$Stub$1;

    invoke-direct {v0, p0}, Lcom/oplus/wrapper/view/IWindowManager$Stub$1;-><init>(Lcom/oplus/wrapper/view/IWindowManager$Stub;)V

    iput-object v0, p0, Lcom/oplus/wrapper/view/IWindowManager$Stub;->mIWindowManager:Landroid/view/IWindowManager;

    .line 741
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Lcom/oplus/wrapper/view/IWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 749
    new-instance v0, Lcom/oplus/wrapper/view/IWindowManager$Stub$Proxy;

    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/wrapper/view/IWindowManager$Stub$Proxy;-><init>(Landroid/view/IWindowManager;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/oplus/wrapper/view/IWindowManager$Stub;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
