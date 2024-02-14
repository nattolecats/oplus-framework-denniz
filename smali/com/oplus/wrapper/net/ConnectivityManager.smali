.class public Lcom/oplus/wrapper/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;
    }
.end annotation


# instance fields
.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor whitelist <init>(Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p1, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/oplus/wrapper/net/ConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist startTethering(IZLcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;

    .line 54
    iget-object v0, p0, Lcom/oplus/wrapper/net/ConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p3}, Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;->getCallBack()Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 55
    return-void
.end method

.method public whitelist startTethering(IZLcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lcom/oplus/wrapper/net/ConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p3}, Lcom/oplus/wrapper/net/ConnectivityManager$OnStartTetheringCallback;->getCallBack()Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p4}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 80
    return-void
.end method

.method public whitelist stopTethering(I)V
    .locals 1
    .param p1, "type"    # I

    .line 95
    iget-object v0, p0, Lcom/oplus/wrapper/net/ConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 96
    return-void
.end method
