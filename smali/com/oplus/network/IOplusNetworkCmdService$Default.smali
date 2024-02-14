.class public Lcom/oplus/network/IOplusNetworkCmdService$Default;
.super Ljava/lang/Object;
.source "IOplusNetworkCmdService.java"

# interfaces
.implements Lcom/oplus/network/IOplusNetworkCmdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/IOplusNetworkCmdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist clearSocketTos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "srcAdd"    # Ljava/lang/String;
    .param p3, "srcPort"    # Ljava/lang/String;
    .param p4, "desAdd"    # Ljava/lang/String;
    .param p5, "desPort"    # Ljava/lang/String;
    .param p6, "tos"    # Ljava/lang/String;
    .param p7, "ifaceName"    # Ljava/lang/String;
    .param p8, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist setSocketTos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "srcAdd"    # Ljava/lang/String;
    .param p3, "srcPort"    # Ljava/lang/String;
    .param p4, "desAdd"    # Ljava/lang/String;
    .param p5, "desPort"    # Ljava/lang/String;
    .param p6, "tos"    # Ljava/lang/String;
    .param p7, "ifaceName"    # Ljava/lang/String;
    .param p8, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
